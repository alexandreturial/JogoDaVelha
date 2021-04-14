import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ModalWinner extends StatelessWidget {
  final tabuleiro;
  ModalWinner(this.tabuleiro);
  
  @override
  Widget build(BuildContext context) {
    return   Observer(builder: (context){
            if(tabuleiro.isWin == true){
              return  Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.5),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child:Text( tabuleiro.winner == 'draw' ? 'Draw' : '${tabuleiro.winner } win'
                        ,style: TextStyle(
                          fontSize: 22, color: 
                          Colors.white, decoration: 
                          TextDecoration.none,
                        ),
                    )),
                    TextButton.icon(
                      label: Text('Novo Jogo'),
                      icon: Icon(Icons.games),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        padding: EdgeInsets.all(15),
                        side: BorderSide(color: Colors.white, width: 2),
                        textStyle: TextStyle(fontSize: 24, ),
                      ),
                      onPressed: () {
                      tabuleiro.newGmae();
                      }
                    )
                  ]
                )
              ),
            );
            }else{
              return SizedBox();
            }
          }) ;
  }
}