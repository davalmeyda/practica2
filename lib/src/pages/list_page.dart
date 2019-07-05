import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: Stack(
          children: <Widget>[
            _crearLista(),
            _crearLogin(),
          ],
        ));
  }

  List<int> _lista = new List();
  int _contador = 0;

  final _scroll = ScrollController();

  @override
  void initState() {
    super.initState();
    _agregar10();
    _scroll.addListener(() {
      if (_scroll.position.pixels == _scroll.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scroll,
      itemCount: _lista.length,
      itemBuilder: (context, i) {
        double _alto = 246.7;

        return FadeInImage.assetNetwork(
          height: _alto,
          image: 'https://picsum.photos/id/${_lista[i]}/500/300',
          placeholder: 'assets/jar-loading.gif',
        );
      },
    );
  }

  void _agregar10() {
    for (var i = 1; i < 11; i++) {
      _contador++;
      _lista.add(_contador);
    }
  }

  bool _isLoading = false;

  void fetchData() {
    setState(() {
      _isLoading = true;
    });
    final duration = Duration(seconds: 2);
    Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    setState(() {
      _isLoading = false;
      _agregar10();
    });

    _scroll.animateTo(
      _scroll.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(seconds: 1),
    );
  }

  Widget _crearLogin() {
    if (_isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center(
            child: CircularProgressIndicator(),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}
