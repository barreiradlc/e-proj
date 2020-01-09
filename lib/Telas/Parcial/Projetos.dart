import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter_samples/fetch_data/photo.dart';
import 'package:http/http.dart' as http;
import '../../Funcoes/UserData.dart';

class Projetos extends StatefulWidget {
  @override
  _MainFetchDataState createState() => _MainFetchDataState();
}

class Photo {
  final String title;
  final String thumbnailUrl;
  Photo._({this.title, this.thumbnailUrl});
  factory Photo.fromJson(Map<String, dynamic> json) {
    return new Photo._(
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}

class _MainFetchDataState extends State<Projetos> {
  List<Photo> list = List();
  var isLoading = false;
  String jwt;

  @override
  void initState(){
    super.initState();
    void_getJWT().then((jwt) {
      setState(() {
        jwt = jwt;
      });
    
    _fetchData(jwt);
    });
  }

  _fetchData(jwt) async {
    print('jwt');
    print(jwt);
    setState(() {
      isLoading = true;
    });
    var future = http.get(
      "https://jsonplaceholder.typicode.com/photos",
      headers: {HttpHeaders.authorizationHeader: "Basic your_api_token_here"},
      // body: {'latitude': -27.210768,'longitude': -49.644013},
    );
    final response = await future;
    if (response.statusCode == 200) {
      list = (json.decode(response.body) as List)
          .map((data) => new Photo.fromJson(data))
          .toList();
      setState(() {
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Fetch Data JSON"),
        // ),

        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: 
        //   RaisedButton(
        //     child: new Text("Fetch Data"),
        //     onPressed: _fetchData,
        //   ),
        // ),

        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    title: new Text(list[index].title),
                    trailing: new Image.network(
                      list[index].thumbnailUrl,
                      fit: BoxFit.cover,
                      height: 40.0,
                      width: 40.0,
                    ),
                  );
                }));
  }
}
