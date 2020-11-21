import 'package:flutter/material.dart';
import 'package:proyecto_final/models/notas.dart';
import 'package:proyecto_final/pages/crear_nota.dart';
import 'package:proyecto_final/pages/notas_item_widget.dart';

class PageNotas extends StatefulWidget {
  @override
  _PageNotasState createState() => _PageNotasState();
}

class _PageNotasState extends State<PageNotas> {

  List<Notas> _notas= [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Mis notas'),
        ),
        body: ListView.builder(
          itemCount: _notas.length,
            itemBuilder: ( context, index){
          return NotasItemWidget(notas: _notas[index],);
        }),

        floatingActionButton: FloatingActionButton(
            child: (Icon(Icons.add)),
            backgroundColor: Colors.orange,
            onPressed: () {
              _openCreateNotaPage();
            }),
      ),
    );
  }

  void _openCreateNotaPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => CrearNota(),
        )).then((value) {
          if(value!= null){
              _addNotasList(value);
          }
    });
  }

  void _addNotasList(Notas notas) {

    setState(() {
      _notas.add(notas);
    });

  }
}
