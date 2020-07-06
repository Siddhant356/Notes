import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global.dart';

class IntrayTodo extends StatelessWidget {
  final String title;
  final String keyValue;

  const IntrayTodo({this.keyValue, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(keyValue),
      margin: EdgeInsets.only(
          top: 5,
          bottom: 5,

      ),
      padding: EdgeInsets.all(10.0),
      height: 100,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [purple1, purpleShade1]),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10.0
          )
        ]
      ),
      child: Row(
        children: <Widget>[
          Radio(value: null, groupValue: null, onChanged: null, ),
          Column(
            children: <Widget>[
              Text(title,
                style: toDoTitle,
              ),
            ],
          ),
        ],
      ),

    );
  }
}




