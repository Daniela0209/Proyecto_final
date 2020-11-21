import 'package:flutter/material.dart';
import 'package:proyecto_final/pages/login_page.dart';

class PaginaPerfil extends StatefulWidget {
  @override
  _PaginaPerfilState createState() => _PaginaPerfilState();
}

class _PaginaPerfilState extends State<PaginaPerfil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perfil'),
            backgroundColor: Colors.orange,
          ),
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.blueAccent[200], Colors.purple[200]])),
              child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: CircleAvatar(
                        radius: 55,
                        child: CircleAvatar (
                          radius: 55,
                          backgroundImage: AssetImage ('images/iconoperfil.png'),
                          backgroundColor: Colors.grey,

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text('Daniela Grajales',
                        textAlign: TextAlign.center,
                        style: TextStyle (
                            color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text('Desarrollador móvil',
                          textAlign: TextAlign.center,
                          style: TextStyle (
                              color: Colors.black)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text(' Bogotá - Medellín, Colombia',
                          textAlign: TextAlign.center,
                          style: TextStyle (
                              color: Colors.black)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Center(child: Image.asset('images/logoRUTHLESS.png')),
                    ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:160.0, top: 20),
                      child: Center(child: Text('Salir', style: TextStyle(color: Colors.black, fontSize: 20.0),)),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: IconButton(
                        icon: Icon(
                          Icons.exit_to_app,
                          size: 40.0,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                        }
                    ),
                  )
                  ],
                ),
                  ]
              ),
            ),
          )
      ),
    );
  }
}
