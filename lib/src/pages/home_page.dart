import 'package:flutter/material.dart';
import 'package:practica2/src/providers/menu_provider.dart';
import 'package:practica2/src/utils/icono_string_util.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //  print(menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final items = data
        .map((f) => Column(children: <Widget>[
              ListTile(
                title: Text(f['texto']),
                leading: getIcon(f['icon']),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                onTap: () {

                  Navigator.pushNamed(context, f['ruta']);

                  // final route = MaterialPageRoute(builder: (context) => AlertPage());

                  // Navigator.push(context, route);
                },
              ),
              Divider(),
            ]))
        .toList();

    return items;
  }
}
