import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:web_view/Telas/Home/Inicio.dart';

final List<String> imgList = [
  'modelo.png',
  'terreno.png',
  'modificacoes.png',
  'projetos.png',
];

final List<String> tList = [
  'INFORME O TERRENO',
  'ESCOLHA MODELO',
  'FAÇA AS MODIFICAÇÕES',
  'EMITA OS PROJETOS',
];

final List<String> dList = [
  'Insira as dimensões e localização do seu terreno. Assim saberemos oque pode ser construido no seu lote.',
  'Escolha um modelo arquitônico que mais combina com você.',
  'Com o modelo esccolhido na tela, agora podemos customizar o seu projeto dentro das opcoes dadas.',
  'Após termos o modelo pronto podemos inserir os dados do proprietário e do terreno, emitir a documentação e receber o projeto por email.',
];

final List child = map<Widget>(
  imgList,
  (index, i) {
    var storage = 'assets/call/';
    BuildContext context;

  

    return Container(
        // color: index % 2 == 1 ? Colors.blue : Colors.blueAccent,
        alignment: Alignment.bottomCenter,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  tList[index],
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Image.asset(storage + i, fit: BoxFit.fitHeight),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.center,
                child: Text(
                  dList[index],
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              // Text(index),
              index == 3
                  ? RaisedButton(child: Text('Começar'), onPressed: 
                  () => CarouselState().inicio
                      // () => print('comçar')
                      )
                  : Container()
              // Positioned(
              //   bottom: 0.0,
              //   left: 0.0,
              //   right: 0.0,
              //   child: Container(
              //     height: double.infinity,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //         colors: [
              //           Color.fromARGB(200, 0, 0, 0),
              //           Color.fromARGB(0, 0, 0, 0)
              //         ],
              //         begin: Alignment.bottomCenter,
              //         end: Alignment.topCenter,
              //       ),
              //     ),
              //     padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              //     //
              //     //  SE TEXTO PRECISAR
              //     //

              //     // child: Text(
              //     //   'No. $index image',
              //     //   style: TextStyle(
              //     //     color: Colors.white,
              //     //     fontSize: 20.0,
              //     //     fontWeight: FontWeight.bold,
              //     //   ),
              //     // ),
              //   ),
              // ),
            ]));
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class Carousel extends StatefulWidget {
  @override
  CarouselState createState() => CarouselState();
}

class CarouselState extends State<Carousel> {
  inicio(context) {
      // Navigator.pushNamed(context, '/novo_um')

      //  Navigator.pop(context);
      // Navigator.of(context, rootNavigator: true).pop('dialog');

      //  InicioState().formPRJ();

      // Navigator.pushNamed(context, '/novo_um');
      return showDialog(
          context: context,
          builder: (context) {
            return Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(0),
                child: AlertDialog(content: Text('alou')));
          });
    }

  @override
  Widget build(BuildContext context) {
    int _current = 0;

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              CarouselSlider(
                autoPlayInterval: Duration(milliseconds: 3000),
                items: child,
                autoPlay: true,
                enableInfiniteScroll: false,
                height: MediaQuery.of(context).size.height / 1.5,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
              )
            ]))

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: map<Widget>(
        //     imgList,
        //     (index, url) {
        //       return Container(
        //         width: 1,
        //         height: 1,
        //         // margin: EdgeInsets.symmetric(
        //         //   vertical: 10.0, horizontal: 2.0
        //         //   ),
        //         decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: _current == index
        //                 ? Color.fromRGBO(0, 0, 0, 0.9)
        //                 : Color.fromRGBO(0, 0, 0, 0.4)),
        //       );
        //     },
        //   ),
        // ),
        // ]
        );
  }
}
