import 'package:flutter/material.dart';
import 'package:web_view/Telas/Parcial/Carousel.dart';
import '../../Funcoes/UserData.dart';
import '../Parcial/Projetos.dart';

// var jwt  = void_getJWT();
// print(jwt);
class Inicio extends StatefulWidget {
  @override
  InicioState createState() => InicioState();
}

class InicioState extends State<Inicio> {
  String username = '';

  primeiroAcesso() {
    return showDialog(
        context: context,
        builder: (context) {
          return Container(
              height: double.infinity, 
              width: double.infinity, 
              child: AlertDialog(
                backgroundColor: Colors.transparent,
                // content: Text('funciona')
                content: Carousel()
              ));
        });
  }

  @override
  void initState() {
  @override
  void initState() {

    super.initState();
    getUser().then((username) {
      setState(() {
        this.username = username;
      });
      Future.delayed(const Duration(milliseconds: 1000), () {
            primeiroAcesso();
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
