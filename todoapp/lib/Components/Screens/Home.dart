import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Widget child;

  Home({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Text('this is home screen .... '),
          ),
        ),
    );
  }
}