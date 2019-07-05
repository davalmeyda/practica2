import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _alto = 50.0;
  double _ancho = 50.0;
  var _color = Colors.greenAccent[200];
  var _radius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          height: _alto,
          width: _ancho,
          decoration: BoxDecoration(
            borderRadius: _radius,
            color: _color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessible),
        onPressed: () => _cambiarForma(),
      ),
    );
  }

  _cambiarForma() {
    Random abc = Random();

    setState(() {
      _alto = abc.nextInt(300).toDouble();
      _ancho = abc.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        abc.nextInt(255),
        abc.nextInt(255),
        abc.nextInt(255),
        1,
      );
      _radius = BorderRadius.circular(abc.nextInt(100).toDouble());
    });
  }
}
