import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  final paragrafo;
  CardItem(this.paragrafo);

  @override
  CardItemState createState() => new CardItemState();
}

class CardItemState extends State<CardItem> {
  var teste = 'album';

  Widget build(BuildContext context) {
    var i = int.parse(widget.paragrafo[0]) % 2;

    print(i);

    return Container(
      margin: EdgeInsets.only(top: 25),
      width: 200,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: widget.paragrafo[4],
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                i == 1 ?

                ListTile(
                  
                  leading: Icon(widget.paragrafo[3], size: 70),
                  title: Text(widget.paragrafo[0].toString() + "º",
                      style: TextStyle(color: Colors.white, fontSize: 21)),
                  subtitle: Text(widget.paragrafo[1].toString(),
                      style: TextStyle(color: Colors.white)),
                )
                :
                ListTile(
                  // leading: Icon(widget.paragrafo[3], size: 70),
                
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.paragrafo[0].toString() + "º", style: TextStyle(color: Colors.white, fontSize: 21)),
                            Text(widget.paragrafo[1].toString(),  style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Icon(widget.paragrafo[3], size: 70)
                      ],)
                ),
                ButtonTheme.bar(
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(widget.paragrafo[2].toString(),
                            style: TextStyle(color: Colors.white)),
                        onPressed: () {},
                      ),
                      // FlatButton(
                      //   child: const Text('Delete',
                      //       style: TextStyle(color: Colors.white)),
                      //   onPressed: () {},
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
