import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

// telas
import './Telas/Home.dart';
import './Telas/Login.dart';
import './Telas/Cadastro.dart';

// metodos
import './Funcoes/UserData.dart';
import 'Telas/Extras/Termos.dart';
import 'Telas/Home/NovoProjetoPassoUm.dart';

void main() {
  // See https://github.com/flutter/flutter/wiki/Desktop-shells#target-platform-override
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(new Geral());

}

class Geral extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<Geral> {
  String jwt = '';
  String homePage = '';

  @override
  void initState(){
    super.initState();  
    void_getJWT()
      .then(( jwt ) {
        if (jwt == null){
          homePage = '/login';
        } else {
          homePage = '/home';
        }
        print(jwt);
        setState(() {
          this.jwt = jwt;
          this.homePage = homePage;
          // this.username = username;
        });
      });
  }
  

  var inicio = new Home();
  var login = new Login();
  var cadastro = new Cadastro();
  var terms = new Termos();
  var novo_um = new NovoProjetoPassoUm();

  @override
  Widget build(BuildContext context) {

    if (this.homePage != ''){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          // See https://github.com/flutter/flutter/wiki/Desktop-shells#fonts
          fontFamily: 'Roboto',
        ),
        initialRoute: this.homePage,   
        // initialRoute: '/login',   

        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          
          '/login': (context) => login,
          '/cadastro': (context) => cadastro,
          '/terms': (context) => terms,
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/home': (context) => inicio,
          
          '/novo_um': (context) => novo_um,
        },
        
      );



    } else {
      return CircularProgressIndicator();
    }
    

  }
}
