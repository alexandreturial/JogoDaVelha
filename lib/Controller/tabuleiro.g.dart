// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tabuleiro.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Tabuleiro on _TabuleiroBase, Store {
  final _$casasAtom = Atom(name: '_TabuleiroBase.casas');

  @override
  ObservableList<Player> get casas {
    _$casasAtom.reportRead();
    return super.casas;
  }

  @override
  set casas(ObservableList<Player> value) {
    _$casasAtom.reportWrite(value, super.casas, () {
      super.casas = value;
    });
  }

  final _$player1Atom = Atom(name: '_TabuleiroBase.player1');

  @override
  Player get player1 {
    _$player1Atom.reportRead();
    return super.player1;
  }

  @override
  set player1(Player value) {
    _$player1Atom.reportWrite(value, super.player1, () {
      super.player1 = value;
    });
  }

  final _$player2Atom = Atom(name: '_TabuleiroBase.player2');

  @override
  Player get player2 {
    _$player2Atom.reportRead();
    return super.player2;
  }

  @override
  set player2(Player value) {
    _$player2Atom.reportWrite(value, super.player2, () {
      super.player2 = value;
    });
  }

  final _$isWinAtom = Atom(name: '_TabuleiroBase.isWin');

  @override
  bool get isWin {
    _$isWinAtom.reportRead();
    return super.isWin;
  }

  @override
  set isWin(bool value) {
    _$isWinAtom.reportWrite(value, super.isWin, () {
      super.isWin = value;
    });
  }

  final _$_TabuleiroBaseActionController =
      ActionController(name: '_TabuleiroBase');

  @override
  dynamic nextMove(int index) {
    final _$actionInfo = _$_TabuleiroBaseActionController.startAction(
        name: '_TabuleiroBase.nextMove');
    try {
      return super.nextMove(index);
    } finally {
      _$_TabuleiroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic newGmae() {
    final _$actionInfo = _$_TabuleiroBaseActionController.startAction(
        name: '_TabuleiroBase.newGmae');
    try {
      return super.newGmae();
    } finally {
      _$_TabuleiroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
casas: ${casas},
player1: ${player1},
player2: ${player2},
isWin: ${isWin}
    ''';
  }
}
