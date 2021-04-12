// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Player on _PlayerBase, Store {
  final _$iconAtom = Atom(name: '_PlayerBase.icon');

  @override
  IconData get icon {
    _$iconAtom.reportRead();
    return super.icon;
  }

  @override
  set icon(IconData value) {
    _$iconAtom.reportWrite(value, super.icon, () {
      super.icon = value;
    });
  }

  final _$typePlayerAtom = Atom(name: '_PlayerBase.typePlayer');

  @override
  Color get typePlayer {
    _$typePlayerAtom.reportRead();
    return super.typePlayer;
  }

  @override
  set typePlayer(Color value) {
    _$typePlayerAtom.reportWrite(value, super.typePlayer, () {
      super.typePlayer = value;
    });
  }

  final _$playerMovesAtom = Atom(name: '_PlayerBase.playerMoves');

  @override
  ObservableList<int> get playerMoves {
    _$playerMovesAtom.reportRead();
    return super.playerMoves;
  }

  @override
  set playerMoves(ObservableList<int> value) {
    _$playerMovesAtom.reportWrite(value, super.playerMoves, () {
      super.playerMoves = value;
    });
  }

  final _$victoryAtom = Atom(name: '_PlayerBase.victory');

  @override
  int get victory {
    _$victoryAtom.reportRead();
    return super.victory;
  }

  @override
  set victory(int value) {
    _$victoryAtom.reportWrite(value, super.victory, () {
      super.victory = value;
    });
  }

  final _$_PlayerBaseActionController = ActionController(name: '_PlayerBase');

  @override
  dynamic setPlayerMoves(dynamic move, dynamic iconType, dynamic player) {
    final _$actionInfo = _$_PlayerBaseActionController.startAction(
        name: '_PlayerBase.setPlayerMoves');
    try {
      return super.setPlayerMoves(move, iconType, player);
    } finally {
      _$_PlayerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic resetPlayerMoves() {
    final _$actionInfo = _$_PlayerBaseActionController.startAction(
        name: '_PlayerBase.resetPlayerMoves');
    try {
      return super.resetPlayerMoves();
    } finally {
      _$_PlayerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setVictory() {
    final _$actionInfo = _$_PlayerBaseActionController.startAction(
        name: '_PlayerBase.setVictory');
    try {
      return super.setVictory();
    } finally {
      _$_PlayerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
icon: ${icon},
typePlayer: ${typePlayer},
playerMoves: ${playerMoves},
victory: ${victory}
    ''';
  }
}
