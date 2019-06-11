import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          child: Text('Mostrat Alerta'),
          textColor: Colors.white,
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.font_download),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo de la alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('texto de la alerta espero salga bien'),
              SizedBox(
                height: 10.0,
              ),
              FlutterLogo(
                size: 100.0,
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.pop(context),
            ),
            FlatButton(
              child: Text('ok'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }
}
