import 'package:flutter/material.dart';
import 'package:proyecto_final/pages/page_notas.dart';
import 'package:proyecto_final/pages/page_perfil.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    PageNotas(),
    PaginaPerfil(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.border_color, color: Colors.white),
              title: Text("Notas", style: TextStyle(color: Colors.white),),
            activeIcon: Icon(
              Icons.border_color,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity, color: Colors.white),
              title: Text("Perfil",style: TextStyle(color: Colors.white)),

            activeIcon: Icon(
              Icons.perm_identity,
              color: Colors.black,
            ),
          ),

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        backgroundColor: Colors.orange[600],
      ),
    );
  }
}
