import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:jogo_da_velha/Components/modal_winner.dart';
import 'package:jogo_da_velha/Components/poits.dart';
import 'package:jogo_da_velha/Components/tabuleiro_jogo.dart';
import 'package:jogo_da_velha/Controller/tabuleiro.dart';

class Home extends StatelessWidget {
  final tabuleiro = Tabuleiro();

  @override
  Widget build(BuildContext context) {
    return Stack(
          children:[ 
          Column(
            children: [
              Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  alignment: Alignment.bottomCenter,
                  child: Text('Jogo da Velha',style: TextStyle(
                          fontSize: 30, color: 
                          Colors.black, decoration: 
                          TextDecoration.none,
                        ),
                      )
              ),
              TabuleiroJogo(tabuleiro),
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
          ModalWinner(tabuleiro),
        ]
    );
  }
}
