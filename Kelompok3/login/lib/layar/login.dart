// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_types_as_parameter_names, non_constant_identifier_names, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:login/constants.dart';
import 'package:login/layar/home.dart';
import 'package:login/layar/register_view.dart';
import 'package:login/layar/about.dart';

class LoginPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
body: Container(
color: ColorPalette.primaryColor,
padding: EdgeInsets.all(20.0),
child: ListView(
children: <Widget>[
Center(
child: Column(
children: <Widget>[
_titleDescription(),
_textField(),
_buildButton(context),
],
),
),
],
),
),
);
}
}

Widget _titleDescription() {
return Column(
children: <Widget>[
Padding(
padding: EdgeInsets.only(top: 16.0),
),
Text(
"Login ",
style: TextStyle(
color: Colors.white,
fontSize: 16.0,

),
),
Padding(
padding: EdgeInsets.only(top: 12.0),
),
Text(
"Kelompok 3",
style: TextStyle(
fontSize: 12.0,
color: Colors.white,
),
textAlign: TextAlign.center,
),
],
);
}
Widget _textField() {
return Column(
children: <Widget>[
Padding(
padding: EdgeInsets.only(top: 12.0),
),
TextFormField(
decoration: const InputDecoration(
border: UnderlineInputBorder(),
enabledBorder: UnderlineInputBorder(
borderSide: BorderSide(
color: ColorPalette.underlineTextField,
width: 1.5,
),
),
focusedBorder: UnderlineInputBorder(
borderSide: BorderSide(
color: Colors.white,
width: 3.0,
),
),
hintText: "Username",
hintStyle: TextStyle(color: ColorPalette.hintColor),
),
style: TextStyle(color: Colors.white),
autofocus: false,
),
Padding(
padding: EdgeInsets.only(top: 12.0),
),
TextFormField(
decoration: const InputDecoration(
border: UnderlineInputBorder(),
enabledBorder: UnderlineInputBorder(
borderSide: BorderSide(
color: ColorPalette.underlineTextField,
width: 1.5,
),
),
focusedBorder: UnderlineInputBorder(
borderSide: BorderSide(
color: Colors.white,
width: 3.0,
),
),
hintText: "Password",
hintStyle: TextStyle(color: ColorPalette.hintColor),
),
style: TextStyle(color: Colors.white),
obscureText: true,
autofocus: false,
),
],
);
}
Widget _buildButton(BuildContext) {
return Column(
children: <Widget>[
Padding(
padding: EdgeInsets.only(top: 16.0),
),
TextButton(
style: TextButton.styleFrom(backgroundColor: Colors.white,

),
onPressed: () {
Navigator.pushNamed(BuildContext, Home.routeName);
}, 

child: Text(
'Login',
style: TextStyle(color: ColorPalette.primaryDarkColor),
textAlign: TextAlign.center
),
),
Padding(
padding: EdgeInsets.only(top: 16.0),
),

Text(
'or',
style: TextStyle(
color: Colors.white,
fontSize: 12.0,
),
),
FlatButton(
child: Text(
'Register',
style: TextStyle(color: Colors.white),
),
onPressed: () {
Navigator.pushNamed(BuildContext, RegisterPage.routeName);
},
),
],
);
}