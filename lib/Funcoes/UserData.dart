import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:convert';

  

  Future <String> void_getJWT() async {
    final authJwt = await SharedPreferences.getInstance();
    String jwt = authJwt.getString("jwt");
    String username = authJwt.getString("username");
    print("user data");
    print(username);
    print(jwt);
    
    // setState(() {
    //   this.jwt = jwt;
    //   this.username = username;
    // });
    // this.jwt = jwt2;

    // var user = [];
    
    // user.add(jwt);


    return jwt;
    
}

Future <String> getUser() async {
  final authJwt = await SharedPreferences.getInstance();
  String jwt = authJwt.getString("jwt");
  String username = authJwt.getString("username");
  print("user data");
  print(username);
  print(jwt);
  
  // setState(() {
  //   this.jwt = jwt;
  //   this.username = username;
  // });
  // this.jwt = jwt2;

  // var user = [];
  
  // user.add(jwt);


  return username;
    
}


