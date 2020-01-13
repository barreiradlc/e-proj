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

              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(0),
              child: AlertDialog(
                // elevation: 2,
                  backgroundColor: Colors.blue, 
                  // content: Text('funciona')

                  content: Carousel()
                  // content: Image.asset('assets/call/terreno.png')
                  ));
        });
  }

  @override
  void initState() {
    print('initstate2');
    super.initState();
    getUser().then((username) {
      print('initstate3');
      setState(() {
        this.username = username;
      });
      Future.delayed(const Duration(milliseconds: 1000), () {
        print('initstate4');
        primeiroAcesso();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(child: Text("Algo")),
    );
  }
}
