// ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class about extends StatefulWidget {

 static const routeName = "/about";

  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About',
      home: Scaffold(
        appBar: AppBar(
          title: Text("About"),
        ),
        body: Center(
          child: Text("KELOMPOK 3 Copyright By ChandraSetiawanK_19552011001 , MFadhilMuttaqin_19552011156 , Yanto_19552011052 , FajarAhmadMuhtadi_19552011178"),
        ),
      ),
    );
  }
}