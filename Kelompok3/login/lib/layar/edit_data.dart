// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// ignore: unused_import
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/layar/beritamdr.dart';
// ignore: unused_import
import 'dart:developer';

// ignore: camel_case_types
class Edit_Data extends StatefulWidget {
  // const Edit_Data({ Key? key }) : super(key: key);
  final List list;
  final int index;
  Edit_Data({required this.list, required this.index});

  @override
  _Edit_DataState createState() => _Edit_DataState();
}

// ignore: camel_case_types
class _Edit_DataState extends State<Edit_Data> {
  TextEditingController controllerTitle = new TextEditingController();
  TextEditingController controllerContent = new TextEditingController();
  TextEditingController controllerUrlImg = new TextEditingController();

  void editData(){
    var url = "https://tokoonlineyanto.000webhostapp.com/editnews.php";
    http.post(Uri.parse(url), body: {
      "idnews" : widget.list[widget.index]['id'],
      "judulberita": controllerTitle.text,
      "deskripsi" : controllerContent.text,
      "url_image": controllerUrlImg.text
    });
  }

  @override
  // ignore: must_call_super
  void initState(){
    controllerTitle = new TextEditingController(
      text: widget.list[widget.index]['title']
    );
    controllerContent = new TextEditingController(
      text: widget.list[widget.index]['content']
    );
    controllerUrlImg = new TextEditingController(
      text: widget.list[widget.index]['img_url']
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Edit Data"),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            new TextField(
              controller: controllerTitle,
              decoration: new InputDecoration(
                hintText: "Isi Judul Berita Disini", labelText: "Judul Berita"),
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new TextField(
              controller: controllerUrlImg,
              decoration: new InputDecoration(
                hintText: "Isi Url Image Disini", labelText: "Link Url Image"),
              ),
               new Padding(padding: const EdgeInsets.only(top: 20.0)),
              new TextField(
              controller: controllerContent,
              decoration: new InputDecoration(
                hintText: "Isi Konten Disini", labelText: "Konten Berita"),
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0)),
              MaterialButton(
                child: new Text("Edit Data"),
                color: Colors.blueAccent,
                onPressed: (){editData(); 
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context)=> new beritamdr()),);}),
          ],
        ),
    ),
    );
  }
}