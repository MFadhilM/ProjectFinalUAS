// ignore: unused_import
// ignore_for_file: use_key_in_widget_constructors, unused_element, duplicate_ignore, avoid_print, prefer_const_constructors, unnecessary_null_comparison, unnecessary_new, await_only_futures, unused_import

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:login/layar/add_data.dart';
import 'package:login/layar/detail_data.dart';
import 'dart:developer';

// ignore: camel_case_types
class beritamdr extends StatefulWidget {
  static const routeName = "/beritamdr";
  

  @override
  _beritamdrState createState() => _beritamdrState();
}

// ignore: camel_case_types
class _beritamdrState extends State<beritamdr> {
  Future<List> getData() async {
    final response = await http.get(
        Uri.parse("https://tokoonlineyanto.000webhostapp.com/listnews.php"));
    //log('res $response.body');
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var _myData = getData();
    FutureOr onGoBack(dynamic value) {
      _myData = getData();
      setState(() {});
    }

    void handleClick(String value, BuildContext context) {
      switch (value) {
        case 'Tambah Data':
          Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Add_Data()))
              .then(onGoBack);
          break;
        case 'Keluar':
          break;
      }
    }

    // ignore: unused_element

    return MaterialApp(
      //home itu diganti ke builder karena akan mengambil context dari json
      home: Builder(
      builder : (context) => Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text("Beritain aja"),
          actions: [
            PopupMenuButton<String>(onSelected: (String choice) {
              handleClick(choice, context);
            }, itemBuilder: (BuildContext contetext) {
              return {'Tambah Data', 'Keluar'}.map((String choice) {
                return PopupMenuItem(value: choice, child: Text(choice));
              }).toList();
            }),
          ],
        ),
        // ignore: unnecessary_new
        body: new FutureBuilder<List>(
            future: _myData,
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);

              return snapshot.hasData
                  // ignore: unnecessary_new
                  ? new ItemList(
                      list: snapshot.data!,
                    )
                  // ignore: unnecessary_new
                  : new Center(
                      child: CircularProgressIndicator(),
                    );
            }),
      ),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  // ignore: prefer_const_constructors_in_immutables
  ItemList({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        //saya tambah 2 baris ini //nova
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return Container(
            padding: const EdgeInsets.all(10.0),
            // ignore: unnecessary_new
            child: new GestureDetector(
              // ignore: unnecessary_new
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      // ignore: unnecessary_new
                      new DetailData(list: list, index: i))),
              child: Card(
                  child: new ListTile(
                title: new Text(list[i]['title']),
                subtitle: new Text(list[i]['de_sub']),
                leading: new Image.network(list[i]['img_url'],
                    width: 100, fit: BoxFit.contain),
              )),
            ),
          );
        });
  }
}