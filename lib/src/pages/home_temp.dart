import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({Key key}) : super(key: key);

  static final opciones = ['Uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    final Lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      Lista..add(tempWidget)..add(Divider());
    }

    return Lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones
        .map((item) => Column(
              children: <Widget>[
                ListTile(
                  title: Text(item + '!'),
                  subtitle: Text('cualquier cosa'),
                  leading: Icon(Icons.access_time),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: (){},
                ),
                Divider(),
              ],
            ))
        .toList();
  }
}
