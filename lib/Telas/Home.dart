import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../Telas/Home/Inicio.dart';
import '../Funcoes/UserData.dart';

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
          
    return Scaffold(
        appBar: AppBar(
          title: Text('E-proj', style: TextStyle(color: Colors.white))),
        body: HomeState(),
    );
  }
}

class HomeState extends StatefulWidget{
  @override
  Tabs createState() => Tabs();
}


class Tabs extends State<HomeState>{
  String jwt = 'testeJWT';
  String username = '';

  @override
  Widget build(BuildContext context) {

    var drawerScaff = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text("Bem Vindo " + this.username),
            decoration: BoxDecoration(
              color: Colors.blue,
              // image: DecorationImage(
              //   // image: bg,
              //   fit: BoxFit.cover,
              //   colorFilter: new ColorFilter.mode(
              //       Colors.black.withOpacity(0.6), BlendMode.dstATop),
              // ),
            ),
          ),
          ListTile(
            title: Text('Perfil'),
            onTap: () {
              print('perfil');
            },
          ),
          ListTile(
            title: Text('Sair'),
            onTap: () {
              print('sair');
            },
          )
        ],
      ),
    );


    // var user
    // setState(() {
    //   this.jwt = jwt;
    //   this.username = username;
    // });
    // print('out');
    // print(user);

    // TODO: implement build
    return new Scaffold(
      // color: Colors.yellow,
      drawer: drawerScaff,
      body: DefaultTabController(
        length: 5,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                color: Colors.yellow,
                child:Inicio()
                // child: Text('Bem vindo ' + this.username)
              ),
              new Container(
                color: Colors.orange,
              ),
              new Container(
                color: Colors.lightGreen,
              ),
              new Container(
                color: Colors.red,
              ),
              new Container(
                color: Colors.orange,
              )
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
              ),
              Tab(
                icon: new Icon(Icons.lightbulb_outline),
              ),
              Tab(
                icon: new Icon(Icons.straighten),
              ),
              Tab(
                icon: new Icon(Icons.format_paint),
              ),
              Tab(
                icon: new Icon(Icons.library_books),
              )
            ],
            labelColor: Colors.white ,
            unselectedLabelColor: Colors.black38,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
          backgroundColor: Colors.lightBlue,
        ),
      ),
    );
  }
}
