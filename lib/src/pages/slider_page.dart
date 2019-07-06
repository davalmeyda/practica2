import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBoxs(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  double _valor = 100.0;

  Widget _crearSlider() {
    return Slider(      
      activeColor: Colors.black,
      label: 'Tamaño de la imagen',
      
      value: _valor,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null : (valor) {
        setState(() {
          _valor = valor;
        });
      },
    );
  }

  bool _bloquearCheck = false;

  Widget _crearCheckBoxs(){
    return CheckboxListTile(
      title: Text('bloquera slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
         _bloquearCheck = valor; 
        });
      },
    );
  }

  Widget _crearSwitch(){
    return SwitchListTile(
      title: Text('bloquera slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
         _bloquearCheck = valor; 
        });
      },
    );
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://purepng.com/public/uploads/large/purepng.com-batman-arkham-knightbatmansuperherocomicdc-comicsbob-kanebat-manbruce-wayne-1701528525691kseuf.png'),
      width: _valor,      
    );
  }
}
