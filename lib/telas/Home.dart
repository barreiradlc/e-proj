import 'package:flutter/material.dart';
import './Tabs.dart';

// https://static.wixstatic.com/media/ce9cf6_ba32cc07b17748c7a77a9cf484d2cd6e~mv2_d_3063_3274_s_4_2.png/v1/fill/w_56,h_58,al_c,q_80,usm_0.66_1.00_0.01/eproject-logo-logotipo.webp

import 'dart:math' as math;

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
@override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<Home> {
  


Future<String> getLogin() async {
  
  // var url = 'https://agencia-provisorio.000webhostapp.com/';
  // var endpoint = 'wp-json/jwt-auth/v1/token';

  // http.Response response = await http.post(Uri.encodeFull(url + endpoint),
  //     body: {'username': 'WebDesign', 'password': 'web!gestao'});
  const bool kIsWeb = identical(0, 0.0);

  // var token = jsonDecode(response.body);

  // print(token);

  if (kIsWeb) {
    // web.window.localStorage['mypref'] = token['token'];
    Navigator.pushNamed(context, '/login');
    print('não mobile');
  } else {
    Navigator.pushNamed(context, '/login');
    print('é mobile xuxu');
  }

  // web.window.localStorage['mypref'] = token['token'];

  // if (token['token'] != null) {
  //   print('login');
  //   Navigator.pushNamed(context, '/home');
  // } else {
  //   print('tratar erro');
  // }

  // if (!Platform.isIOS && !Platform.isAndroid) {
  // }
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
            child: Scaffold(
      appBar: AppBar(
        title: Text("EPROJ"),
      ),
      body: GridView.count(crossAxisCount: 1, children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: getLogin,
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: 
                          Column(
                            children: <Widget>[
                              Icon(Icons.people),
                              Text('Começar agora', style: TextStyle(fontSize: 20)),

                            ],
                            )
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.location_city, size: 42),
                  Text('EPROJ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40))
                ],
              ),
            ),
            Text('Tudo o que você precisa para construir em um só lugar',
                style: TextStyle(fontWeight: FontWeight.w100, fontSize: 20)),
            Text('NOSSOS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text('SERVIÇOS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.home, size: 20),
                Container(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          "ARQUITETURA",
                          style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                        new Text(
                          "Com o nosso diverso portfólio de projetos você escolhe o modelo arquitetônico que mais combina com você e à suas necessidades. Você mesmo pode ajustar as paredes e cômodos sem a ajuda de ninguém",
                          style: new TextStyle(color: Colors.grey),
                        )
                      ],
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          "DESIGN DE INTERIORES",
                          style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                        new Text(
                          "Personalize o seu projeto com diferentes opções de pintura de paredes, revestimentos, disposição do mobiliário e outros opcionais.",
                          style: new TextStyle(color: Colors.grey),
                        )
                      ],
                    )),
                Icon(Icons.weekend),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.palette),
                Container(
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          "DESIGN DE INTERIORES",
                          style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        ),
                        new Text(
                          "Personalize o seu projeto com diferentes opções de pintura de paredes, revestimentos, disposição do mobiliário e outros opcionais.",
                          style: new TextStyle(color: Colors.grey),
                        )
                      ],
                    )),
              ],
            ),
            Text(
              'Sobre',
              style: new TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 60,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'QUEM SOMOS',
                  style: new TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 42.0,
                  ),
                ),
                Container(
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(
                          "A EPROJECT é uma empresa que desenvolve projetos de arquitetura e engenharia para edificações de pequeno porte e os oferece de forma totalmente online. \nNós acreditamos que o futuro está na possibilidade das pessoas resolverem problemas a hora que quiserem e de forma autônoma. E por isso automatizamos processos de arquitetura e engenharia para que qualquer pessoa consiga entender, projetar e executar uma obra por si só.\n O cliente poderá escolher, modelar, personalizar, estimar custos e até contratar todos profissionais necessários em uma obra em um só lugar.",
                          style: new TextStyle(color: Colors.grey),
                        )
                      ],
                    )),
              ],
            ),
          ],
        )
      ]),
    ))
        // Text('EPROJ'),
        );
  }
}
