import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
    return Container(
      alignment: Alignment.bottomCenter,
      child: 
    // Column(children: <Widget>[
          Image.asset(storage + i),
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
        // ])
        );
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
  @override
  Widget build(BuildContext context) {
    int _current = 0;

    return Scaffold(
      
        backgroundColor: Colors.blue,

        body: 
        Center(
      
      child: 
        // Column(
            // mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            // children: [
              CarouselSlider(
                items: child,
                autoPlay: true,
                enableInfiniteScroll: false,
                height: MediaQuery.of(context).size.height / 4,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
              )),
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
