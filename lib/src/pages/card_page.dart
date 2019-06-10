import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox( height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Soy el titulo de esta tarjeta'),
            leading: Icon(Icons.photo_album, color: Colors.blue),
            subtitle: Text(
                'hola como estas esta es una prueba de mi tarjeta, espero quede bien y que les guste a todos los demas por que me estoy esforzando para que quede bien asi que conchetumare espero te guste o si no te rompo el oscico'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {

    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://valladolidenbici.files.wordpress.com/2018/06/31-mayo-042.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            height: 280.0,
            fadeInDuration: Duration(microseconds: 200),
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('no se que poner aqui'),
          )
        ],
      ),
    );

  }
}
