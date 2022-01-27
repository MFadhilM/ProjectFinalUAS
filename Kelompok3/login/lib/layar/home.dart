// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:login/layar/about.dart';
import 'package:login/layar/beritadn.dart';
import 'package:login/layar/beritamdr.dart';
import 'package:login/layar/beritanl.dart';


class Home extends StatefulWidget {
static const routeName = "/Home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get onTap => null;

  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      
      appBar: AppBar(
        title: Text("Berita Kita"),
        backgroundColor: Colors.white

      ),

      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Sekilas Berita",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black
                ),
                ), 
                accountEmail: null,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                ),

                ListTile(
                  title:  Text("Berita Dalam negeri",
                    style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueGrey,

                  ),
                ),
                onTap : () {
                    Navigator.pushNamed(context, beritadn.routeName);
                },
                leading : Icon(Icons.ring_volume, color : Colors.white,size:20.0),
                ),
                 ListTile(
                  title:  Text("Berita Luar negeri ",
                    style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueGrey,

                  ),
                ),
                onTap : () {
                    Navigator.pushNamed(context, beritanl.routeName);
                },
                leading : Icon(Icons.ring_volume, color : Colors.white,size:20.0),
                 ),
                  ListTile(
                  title:  Text("About",
                    style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueGrey,

                  ),
                ),
                onTap : () {
                    Navigator.pushNamed(context, about.routeName);
                },
                leading : Icon(Icons.ring_volume, color : Colors.white,size:20.0),
                  ), 
                    ListTile(
                  title:  Text("Beritain aja",
                    style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueGrey,

                  ),
                ),
                onTap : () {
                    Navigator.pushNamed(context, beritamdr.routeName);
                },
                leading : Icon(Icons.ring_volume, color : Colors.white,size:20.0),
                  )   
                  
            ],
          ),
        ),
      ),
       
        backgroundColor: Colors.white, 
        body: ListView(
          children: <Widget>[
            Container(
              height: 300.0,
              margin: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(6.0),
                    child: Text("Sekilas Info",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black
                    ),
                  ),
                  ),
                  SizedBox(height: 6.0,),
                  Container(height: 250.0,  
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                  ),),
                  Container(
                    child: ListView(
                      children: <Widget>[
                        Container(
                          width: 270.0,
                          color: Colors.white,
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[

                             Expanded(
                               flex: 1,
                               child: ClipRRect(
                                 borderRadius :BorderRadius.circular(15.0),
                                 child: Image.network("https://www.cnnindonesia.com/nasional/20211125101222-20-725859/polisi-tutup-dua-ruas-jalan-di-patung-kuda-imbas-demo-ribuan-buruh",
                                 height: 150.0,
                                 fit: BoxFit.cover,
                                 ),
                                        ),
                             ),
                             SizedBox(width: 5.0,),
                             Expanded(
                               flex: 2,
                               child: Column(
                                 children: <Widget>[

                                Padding(padding: const EdgeInsets.all(8.0),
                                   child :Text("Buruh",
                                   style: TextStyle(
                                     fontSize: 20.0,
                                     color: Colors.white,
                                     ),

                                   ),),
                                   SizedBox(height: 5.0,),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text("Polisi Tutup Dua Ruas Jalan di Patung Kuda Imbas Demo Ribuan Buruh",
                                     style: TextStyle(
                                       fontSize: 17.0,
                                       color: Colors.white,
                                     ),
                                     maxLines: 3,),
                                   ),
                                    SizedBox(height: 5.0,),

                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.remove_red_eye, color: Colors.red,size: 20.0,),
                                          SizedBox(width: 6.0,),
                                          Text("Views",
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.white,
                                          ),)
                                        ],
                                      ),
                                    )
                                 ],
                               ),
                             )
                           ],
                         ), 
                        ),

                        SizedBox(width: 10.0,),
                            Container(
                          width: 300.0,
                          color: Colors.white,
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[

                             Expanded(
                               flex: 1,
                               child: ClipRRect(
                                 borderRadius :BorderRadius.circular(15.0),
                                 child: Image.network("https://asset.kompas.com/crops/e6c9g6awjPmmbS3l5q6wEUxOzWI=/0x88:1200x888/750x500/data/photo/2019/08/03/5d450c7b5dc75.jpg",
                                 height: 150.0,
                                 fit: BoxFit.cover,
                                 ),
                                        ),
                             ),
                             SizedBox(width: 5.0,),
                             Expanded(
                               flex: 2,
                               child: Column(
                                 children: <Widget>[

                                Padding(padding: const EdgeInsets.all(8.0),
                                   child :Text("Buruh",
                                   style: TextStyle(
                                     fontSize: 20.0,
                                     color: Colors.white,
                                     ),

                                   ),),
                                   SizedBox(height: 5.0,),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text("Bentrok Panas Dua Ormas Di Karawang: Satu Tewas Penuh Bacokan, Mobil Honda Brio Hancur",
                                     style: TextStyle(
                                       fontSize: 17.0,
                                       color: Colors.white,
                                     ),
                                     maxLines: 3,),
                                   ),
                                    SizedBox(height: 5.0,),

                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.remove_red_eye, color: Colors.red,size: 20.0,),
                                          SizedBox(width: 6.0,),
                                          Text("Views",
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.white,
                                          ),)
                                        ],
                                      ),
                                    )
                                 ],
                               ),
                             )
                           ],
                         ), 
                        )
                      ],
                    ),
                  ),
                 
                  
                ],
                ),
            )
          ],
        )
          
    );
  }
}
