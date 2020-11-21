import 'package:flutter/material.dart';
import 'package:proyecto_final/models/notas.dart';

class NotasItemWidget extends StatelessWidget {
  final Notas notas;

  const NotasItemWidget({
    Key key,
   @required this.notas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( width: 50.0, color: Colors.redAccent,);
  }
}
