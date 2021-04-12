import 'package:flutter/material.dart';

class Points extends StatelessWidget {
  final String name;
  final int points;
  final Color cor;
  Points({Key key, this.name, this.points, this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(name, style: TextStyle(fontSize: 15, color: cor, decoration: TextDecoration.none,)),
      
      Text(
          '${points}',
          style: TextStyle(fontSize: 15, color: cor, decoration: TextDecoration.none,),
      )
    ]);
  }
}
