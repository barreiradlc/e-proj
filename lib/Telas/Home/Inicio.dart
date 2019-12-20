import 'package:flutter/material.dart';

// void main() => runApp(Inicio());

class Inicio extends StatelessWidget {
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
                  children: <Widget>[Text("Bem vindo !")],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
