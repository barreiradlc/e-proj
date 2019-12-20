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
  var inicio = new Home();
  var login = new Login();
  var cadastro = new Cadastro();

  

  // _getJWT();
    
  // var homePage
  // if (this.jwt != ''){
  //   homePage = '/login'
  // } else {
  //   homePage = '/home'
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        // See https://github.com/flutter/flutter/wiki/Desktop-shells#fonts
        fontFamily: 'Roboto',
      ),
      initialRoute: '/login',   
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/login': (context) => login,
        '/cadastro': (context) => cadastro,
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => inicio,
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
