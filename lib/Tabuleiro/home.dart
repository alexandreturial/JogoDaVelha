import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:jogo_da_velha/Components/poits.dart';
import 'package:jogo_da_velha/Controller/tabuleiro.dart';

class Home extends StatelessWidget {
  Tabuleiro tabuleiro = Tabuleiro();

  @override
  Widget build(BuildContext context) {
    return Stack(
          children:[ 
          Column(
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.8,
                  color: Colors.white,
                  padding:EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
                  child: GridView.count(
                    crossAxisCount: 3,
                    padding: EdgeInsets.all(20),
                    children: List.generate(tabuleiro.casas.length, (index) {
                      return Center(
                        child: Observer(builder: (context) {
                          return TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.teal,
                                backgroundColor: (tabuleiro.casas[index] == null
                                    ? Colors.grey[200]
                                    : tabuleiro.casas[index].typePlayer),
                                minimumSize: Size(105, 105)),  
                            onPressed: () {
                              tabuleiro.nextMove(index);
                            
                            },
                            child: Observer(builder: (context) {
                              if (tabuleiro.casas[index] == null) {
                                return Text('');
                              } else {
                                return Icon(
                                  tabuleiro.casas[index].icon,
                                  color: Colors.white,
                                  size: 50,
                                );
                              }
                            }),
                          );
                        }),
                      );
                    }),
                  ),
                )
              ),
              Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[
                    Observer(builder: (context){
                        return Points(name: 'Player 1', points: tabuleiro.player1.victory, cor: Colors.red[400]);
                      }),
                      Observer(builder: (context){
                        return Points(name: 'Player 2', points: tabuleiro.player2.victory, cor: Colors.blue[400]);
                      })
                    ]
                  )
              ),
            
            ]
          ),
          Observer(builder: (context){
            if(tabuleiro.isWin){
              return  Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.5),
              
              child: Align(
                alignment: Alignment.center,
                child: TextButton.icon(
                  label: Text('Novo Jogo'),
                  icon: Icon(Icons.games),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.all(15),
                    side: BorderSide(color: Colors.white, width: 2),
                    textStyle: TextStyle(fontSize: 30, ),
                  ),
                  onPressed: () {
                   tabuleiro.newGmae();
                  }
                )
                
               
              ),
            );
            }else{
              return SizedBox();
            }
          }) 
         
        ]
    );
  }
}
