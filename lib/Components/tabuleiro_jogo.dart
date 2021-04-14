import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TabuleiroJogo extends StatelessWidget {
  final tabuleiro;

  TabuleiroJogo( this.tabuleiro);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      color: Colors.white,
      padding: EdgeInsets.only(top: 10),
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
    ));
  }
}
