import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'dart:convert';

  

 class UserData {
  Future <void> void_getJWT() async {
    final authJwt = await SharedPreferences.getInstance();
    String jwt = authJwt.getString("jwt");
    String username = authJwt.getString("username");
    // print("user data");
    // print(username);
    // print(jwt);
    
    // setState(() {
    //   this.jwt = jwt;
    //   this.username = username;
    // });
    // this.jwt = jwt2;

    var user = [];
    
    user.add(jwt);


    // return jwt;
    SharedPreferences sharedPrefs;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
    future: void_getJWT(),
    builder: (context, jwt) {
      if (jwt.hasData) {
        return Text(jwt.toString());
      }
      return CircularProgressIndicator(); // or some other widget
    },
  );

}

 
  }
}

