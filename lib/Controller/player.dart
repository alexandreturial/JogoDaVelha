import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'player.g.dart';



class Player = _PlayerBase with _$Player;

abstract class _PlayerBase with Store {
  @observable
  IconData icon;

  @observable
  Color typePlayer;

  @observable
  ObservableList<int> playerMoves = ObservableList<int>();
  @action
  setPlayerMoves(move, iconType, player){
    playerMoves.add(move);
    icon = iconType;
    typePlayer = player;
  }


  @action
  resetPlayerMoves(){
    playerMoves = ObservableList<int>();
  }

  @observable
  int victory = 0;
  @action
  setVictory(){
   victory++;
  }
}
