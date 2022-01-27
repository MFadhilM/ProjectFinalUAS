// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class beritadn extends StatefulWidget {
  static const routeName = "/beritadn";

  @override
  _beritadnState createState() => _beritadnState();
}

class _beritadnState extends State<beritadn> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Container(
           color : Colors.white,
          child:Center(
            child: Text("Buruh Demo Karena UMR Hanya Naik 6 ribu",style: TextStyle(fontSize: 20.0 ,color: Colors.black),),
          ) ,),
          Container(
             color : Colors.white,
          child:Center(
            child: Text("Kecelakaan Tunggal Terjadi Bypass SoekarnoHatta",style: TextStyle(fontSize: 20.0, color: Colors.black),),
          ) ,),
          Container(
             color : Colors.white,
          child:Center(
            child: Text("Syarat Pakai Masker yang Dianjurkan, Cegah Covid-19 Varian Omicron",style: TextStyle(fontSize: 20.0, color: Colors.black),),
          ) ,),
          Container(
             color : Colors.white,
          child:Center(
            child: Text("Buruh dan Mahasiswa Sepakat Kepung Istana 29 November 2021",style: TextStyle(fontSize: 20.0,color: Colors.black),),
          ) ,),
      ],
    );
  }
}