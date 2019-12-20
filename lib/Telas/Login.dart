import 'dart:io' show Platform; //at the top
import 'package:flutter/foundation.dart' show TargetPlatform;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:async';
import 'dart:convert';

import 'package:universal_html/prefer_universal/html.dart' as web;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

// Define a custom Form widget.
class Login extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<Login> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.

  final myController = TextEditingController(text: 'barreira266@hotmail.com');
  final myController2 = TextEditingController(text: '123123123');

  // final myController = TextEditingController(text: '');
  // final myController2 = TextEditingController(text: '');

  Future<String> getReq() async {
    // cloud
    var url = 'http://eproj-teste.herokuapp.com/';
    print('indo');
    // local
    // var url = 'http://localhost:3000';

    var endpoint = 'sessions';

    print('req');
    http.Response response =
        await http.post(Uri.encodeFull(url + endpoint), body: {
      // 'username': usuarioCred.text,
      'email': myController.text,
      'password': myController2.text
    });
    const bool kIsWeb = identical(0, 0.0);
    var res = jsonDecode(response.body);
    print(res);

    if (res['errors'] == null) {
      SharedPreferences jwt = await SharedPreferences.getInstance();

      print('sucesso');
      print(res);
      
      var resToken = res['token'];
      var resUsername = res['perfil'];
      print(resUsername[0]['username']);
      print('sucesso');
      // http.Response res2 = await http.post(Uri.encodeFull(url + endpoint),
      //     body: {'email': emailCred.text, 'password': senhaCred.text});
      // var login = jsonDecode(res2.body);

      // if (kIsWeb) {
      //   web.window.localStorage['mypref'] = login['token'];
      //   print('não mobile');
      // } else {
      //   await jwt.setString('jwt', login['token']);
      //   print("mobile");
      // }
      await jwt.setString('jwt', resToken['token']);
      await jwt.setString('username', resUsername[0]['username']);

      Navigator.pushNamed(context, '/home');
    } else {
      print('erro');
    }

    // print(token);

    // } else {
    //   print('deu ruim');
    //   return showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //           // Retrieve the text the that user has entered by using the
    //           // TextEditingController.
    //           content: Text(
    //         "A senha e confirmação se diferem",
    //       ));
    //     },
    //   );
    // }
    // //

    // // if (!Platform.isIOS && !Platform.isAndroid) {
    // // }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.all(32.0),
          //   child: Text(
          //     "E-PROJ",
          //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 42),
          //   ),
          // ),
          Container(
            alignment: Alignment.topCenter,
            padding: new EdgeInsets.all(30.0),
            color: Colors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Image(
                  image: AssetImage('assets/imgs/eproject-logo-logotipo.png')),
            ),
          ),

          //
          // Form
          //
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: myController,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                        ),
                      ),
                      labelText: 'E-mail',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: myController2,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(50.0),
                        ),
                      ),
                      labelText: 'Senha',
                    ),
                  ),
                ),
                Padding(
                  // margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  padding: const EdgeInsets.all(16.0),
                  child: RaisedButton(
                    onPressed: getReq,
                    color: Colors.lightBlueAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Login', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ),
              ]),

          //
          // Form
          //

          Padding(
            // margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            padding: const EdgeInsets.only(bottom:30.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cadastro');
              },
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    'Ainda não tem uma conta? Clique aqui para registrar-se',
                    style: TextStyle(fontSize: 10)),
              ),
            ),
          ),

          // ÍCONES SOCIAIS

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: <Widget>[
          //     IconButton(
          //         // Use the FontAwesomeIcons class for the IconData
          //         icon: new Icon(FontAwesomeIcons.googlePlus),
          //         onPressed: () {
          //           print("Pressed");
          //           return showDialog(
          //             context: context,
          //             builder: (context) {
          //               return AlertDialog(
          //                 // Retrieve the text the that user has entered by using the
          //                 // TextEditingController.
          //                 content: Text("Funcionalidade em Desenvolvimento"),
          //               );
          //             },
          //           );
          //         }),
          //     IconButton(
          //         // Use the FontAwesomeIcons class for the IconData
          //         icon: new Icon(FontAwesomeIcons.facebook),
          //         onPressed: () {
          //           return showDialog(
          //             context: context,
          //             builder: (context) {
          //               return AlertDialog(
          //                 // Retrieve the text the that user has entered by using the
          //                 // TextEditingController.
          //                 content: Text("Funcionalidade em Desenvolvimento"),
          //               );
          //             },
          //           );
          //         })
          //   ],
          // )

          // ÍCONES SOCIAIS

        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   // When the user presses the button, show an alert dialog containing
      //   // the text that the user has entered into the text field.
      //   onPressed: () {
      //     return showDialog(
      //       context: context,
      //       builder: (context) {
      //         return AlertDialog(
      //           // Retrieve the text the that user has entered by using the
      //           // TextEditingController.
      //           content: Text(myController.text + myController2.text),
      //         );
      //       },
      //     );
      //   },
      //   tooltip: 'Show me the value!',
      //   child: Icon(Icons.text_fields),
      // ),
    );
  }
}
