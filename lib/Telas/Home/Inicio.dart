import 'package:flutter/material.dart';
import '../../Funcoes/UserData.dart';


// var jwt  = void_getJWT();
// print(jwt);
class InicioState extends StatefulWidget {
  @override
  Inicio createState() => Inicio();
}

class Inicio extends State<InicioState> {
  String username = '';


@override
  void initState(){
    super.initState();  
    getUser()
      .then(( username ) {
        setState(() {
          this.username = username;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    // final title = 'Itens';

    return MaterialApp(
      // title: title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text(title),
        // ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Bem vindo, " + this.username + " !")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
