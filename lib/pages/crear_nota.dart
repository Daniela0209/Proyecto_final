import 'package:flutter/material.dart';
import 'package:proyecto_final/models/notas.dart';

class CrearNota extends StatefulWidget {
  @override
  _CrearNotaState createState() => _CrearNotaState();
}

class _CrearNotaState extends State<CrearNota> {

  final TextEditingController _tittleController = TextEditingController();
  final TextEditingController _textController = TextEditingController();


  String _tittleError;
  String _textError;


  @override
  void dispose() {
    _tittleController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva nota'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: TextField(
                controller: _tittleController,
                decoration: InputDecoration(
                  labelText: 'Titulo',
                  errorText: _tittleError,

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Center(
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  labelText: 'Contenido',
                  errorText: _textError,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20.0, bottom: 120.0, top: 330.0),
            child: RaisedButton(
              child: Text(
                'Guardar',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              color: Colors.orange,
              onPressed: () {
                _create();
              },

            ),
          ),
        ],
      ),
    );
  }

  void _create() {
    var tittle = _tittleController.text.trim();
    var text = _textController.text.trim();

    bool hasError = false;

    if (tittle.isEmpty) {
      setState(() {
        _tittleError = 'Debes ingresar un Título';
      });
      hasError = true;
    }
    if (text.isEmpty) {
      setState(() {
        _textError = 'Debes ingresar una nota o contenido';
      });

      hasError = true;
    }

    if (tittle.length < 5) {
      setState(() {
        _tittleError = 'El Título debe contener al menos 5 letras';
      });
      hasError = true;
    }

    if(!hasError){
      var notas = Notas(title: tittle, text: text);
      Navigator.of(context).pop(notas);
    }
  }
}