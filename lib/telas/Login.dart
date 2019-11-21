
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class Login extends StatelessWidget {
  

  final _formLogin = GlobalKey<FormState>();
  final _formSenha = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem vindo',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Form(
                key: _formLogin,
                child: // Build this out in the next steps.
                    TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Login',
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Tens que digitar algo';
                    } else {
                        Navigator.pushNamed(context, '/second');
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Form(
                key: _formSenha,
                child: // Build this out in the next steps.
                    TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Tens que digitar algo';
                    }
                    return null;
                  },
                ),
              ),
            ),
            const SizedBox(height: 30, width: 80),
            RaisedButton(
              padding: const EdgeInsets.all(0.0),

              onPressed: () {
                // Validate returns true if the form is valid, otherwise false.
                if (_formLogin.currentState.validate() &&
                    _formSenha.currentState.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.

                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      
                      Color(0xffffff00),
                      Color(0xfcba0300),
                      Color(0xffd86b00),
                      Color(0xffd86b00),
                      
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
                child: const Text('Login',
                    style: TextStyle(height:1, fontSize: 20, color:Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

