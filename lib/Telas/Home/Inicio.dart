import 'package:flutter/material.dart';
import '../../Funcoes/UserData.dart';
import '../Parcial/Projetos.dart';

// var jwt  = void_getJWT();
// print(jwt);
class InicioState extends StatefulWidget {
  @override
  Inicio createState() => Inicio();
}

class Inicio extends State<InicioState> {
  String username = '';

  @override
  void initState() {

    super.initState();
    getUser().then((username) {
      setState(() {
        this.username = username;
      });
    });

  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Projetos()
    );
  }
}
