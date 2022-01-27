// ignore_for_file: duplicate_import, unused_import

import 'package:flutter/material.dart';
import 'package:login/layar/beritadn.dart';
import 'package:login/layar/login.dart';
import 'package:login/layar/register_view.dart';
import 'Package:login/layar/home.dart';
import 'package:login/layar/about.dart';
import 'package:login/layar/beritadn.dart';
import 'package:login/layar/beritanl.dart';
import 'package:login/layar/beritamdr.dart';
void main(){
runApp(MaterialApp(
  
debugShowCheckedModeBanner: false,
title: "Login Register Page",
initialRoute: "/",
routes: {
"/" : (context) => LoginPage(),
RegisterPage.routeName : (context) => RegisterPage(),
Home.routeName : (context) => Home(),
about.routeName : (context) => about(),
beritadn.routeName : (context) => beritadn(),
beritanl.routeName : (context) => beritanl(),
beritamdr.routeName : (context) => beritamdr(),

},
));
}

