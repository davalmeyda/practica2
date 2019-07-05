import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  InputsPage({Key key}) : super(key: key);

  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  String _texto = "";
  String _email = "";
  String _pass = '';

  var _controlador = new TextEditingController();

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counterText: 'letras ${_texto.length}',
        labelText: 'Nombre',
        hintText: 'Escribe el nombre',
        helperText: 'solo es el nombre',
        icon: Icon(Icons.account_circle),
        suffixIcon: Icon(Icons.adb),
        border: OutlineInputBorder(),
      ),
      onChanged: (texto) {
        setState(() {
          _texto = texto;
        });
      },
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Escribe el Email',
        icon: Icon(Icons.alternate_email),
        suffixIcon: Icon(Icons.email),
        border: OutlineInputBorder(),
      ),
      onChanged: (texto) {
        setState(() {
          _email = texto;
        });
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Contraseña',
        hintText: 'Escribe la contraseña',
        icon: Icon(Icons.lock),
        suffixIcon: Icon(Icons.phonelink_lock),
        border: OutlineInputBorder(),
      ),
      onChanged: (texto) {
        setState(() {
          _pass = texto;
        });
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _controlador,
      enableInteractiveSelection: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Fecha de nacimiento',
        hintText: 'Fecha de nacimiento',
        icon: Icon(Icons.date_range),
        suffixIcon: Icon(Icons.data_usage),
        border: OutlineInputBorder(),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime _picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2015),
      lastDate: DateTime(2020),
      initialDate: DateTime.now(),
      locale: Locale('es'),
    );

    if (_picked != null) {
      _controlador.text = _picked.toString();
    }
  }

  List<String> _poderes = ['volar', 'nadar', 'correr'];
  String _seleccion = 'volar';

  Widget _crearDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        DropdownButton(
          value: _seleccion,
          items: _obtenerItem(),
          onChanged: (opt) {
            setState(() {
              _seleccion = opt;              
            });
          },
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> _obtenerItem() {
    List<DropdownMenuItem<String>> _items = new List();
    _poderes.forEach((f) => _items.add(DropdownMenuItem(
          child: Text(f),
          value: f,
        )));
    return _items;
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('el nombre es $_texto'),
      subtitle: Text('el email es $_pass'),
    );
  }
}
