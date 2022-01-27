// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class beritanl extends StatefulWidget {
static const routeName = "/beritanl";

  @override
  _beritanlState createState() => _beritanlState();
}

class _beritanlState extends State<beritanl> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Container(
           color : Colors.blue,
          child:Center(
            child: Text("Adella Menangis Selama Konser Spesial ITV-nya",style: TextStyle(fontSize: 20.0 ,color: Colors.black),),
          ) ,),
          Container(
             color : Colors.yellow,
          child:Center(
            child: Text("Solomon Porak-Poranda usai Ricuh Demo PM Mundur",style: TextStyle(fontSize: 20.0, color: Colors.black),),
          ) ,),
          Container(
             color : Colors.redAccent,
          child:Center(
            child: Text("Untuk pertama Kalinya Dalam Sejarah Sebuah Pesawat A340 Mendarat Antarkita ",style: TextStyle(fontSize: 20.0, color: Colors.black),),
          ) ,),
          Container(
             color : Colors.greenAccent,
          child:Center(
            child: Text("Seorang Wanita India Meninggal Setelah Diserang Oleh Ular kobra",style: TextStyle(fontSize: 20.0,color: Colors.black),)
          ) ,),
      ],
    );
  }
}