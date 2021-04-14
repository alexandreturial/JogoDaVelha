import 'package:flutter/material.dart';
import 'package:jogo_da_velha/Controller/player.dart';
import 'package:mobx/mobx.dart';
part 'tabuleiro.g.dart';

class Tabuleiro = _TabuleiroBase with _$Tabuleiro;

abstract class _TabuleiroBase with Store {
  int _counter = 1;

  //casas do tabuleiro
  @observable
  ObservableList<Player> casas = ObservableList<Player>.of(
    [
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    ]
  );
  
  @observable
  Player player1 = new Player();
  
  @observable
  Player player2 = new Player();

  @observable
  String winner;
  
  //IsAWin
  @observable
  bool isWin = false;

  @action
  nextMove(int index){
    if(_counter <= 9){
      if(!player1.playerMoves.contains(index) && !player2.playerMoves.contains(index)){
        if( _counter % 2 != 0){
          player1.setPlayerMoves(index, Icons.circle, Colors.red[400]);
          _isAWin(player1.playerMoves);
              
          if(isWin){
            player1.setVictory();
            winner = 'red';
          }
          
          casas[index] = player1;

        }else{
          player2.setPlayerMoves(index, Icons.close, Colors.blue[400]);
          _isAWin(player2.playerMoves);
              
          if(isWin){
            player2.setVictory();
            winner = 'blue';
          }
          print(isWin);
          casas[index] = player2;
      }
      _counter++;
      }
    }else{
      isWin = true;
      winner = 'draw';
    }
  }
      


  @action
  newGmae(){
    _counter = 1;
    isWin = false;

    player1.resetPlayerMoves();
    player2.resetPlayerMoves();

    casas = ObservableList<Player>.of(
      [
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      ]
    );
  }
  
  _isAWin(ObservableList<int> movesPlayer){
   //rows
   if(
      (movesPlayer.contains(0) && movesPlayer.contains(1) && movesPlayer.contains(2) ) ||
      (movesPlayer.contains(3) && movesPlayer.contains(4) && movesPlayer.contains(5) ) ||
      (movesPlayer.contains(6) && movesPlayer.contains(7) && movesPlayer.contains(8) )
   ){ isWin = true; }
   //Colluns
   if(
      (movesPlayer.contains(0) && movesPlayer.contains(3) && movesPlayer.contains(6) ) ||
      (movesPlayer.contains(1) && movesPlayer.contains(4) && movesPlayer.contains(7) ) ||
      (movesPlayer.contains(2) && movesPlayer.contains(5) && movesPlayer.contains(8) )
   ){ isWin = true; }
   //Diagonal
   if(
      (movesPlayer.contains(0) && movesPlayer.contains(4) && movesPlayer.contains(8) ) ||
      (movesPlayer.contains(2) && movesPlayer.contains(4) && movesPlayer.contains(6) )
   ){ isWin = true; }
   
  }
}
