// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class RegisterPage extends StatefulWidget {
static const routeName = "/RegisterPage";

@override
_RegisterPageState createState() => _RegisterPageState();
}
class _RegisterPageState extends State<RegisterPage> {
  
@override
Widget build(BuildContext context) {
return Scaffold(

body: Container(
color: ColorPalette.primaryColor,
// ignore: prefer_const_constructors
padding: EdgeInsets.all(20.0),
child: ListView(
children: <Widget>[
_titleDescription(),
_textField(),
_buildButton(context),
],
),
),
);
}
}
Widget _titleDescription() {
return Column(
children: <Widget>[
// ignore: prefer_const_constructors
Padding(
// ignore: prefer_const_constructors
padding: EdgeInsets.only(top: 16.0),
),
// ignore: prefer_const_constructors
Text(
"Registrasi",
// ignore: prefer_const_constructors
style: TextStyle(
color: Colors.white,
fontSize: 16.0,
),
),
Text(
"Kelompok 3 ",
style: TextStyle(
color: Colors.white,
fontSize: 12.0,
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
hintStyle: TextStyle(color: Colors.white),
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
width: 3.0,
),
),
focusedBorder: UnderlineInputBorder(
borderSide: BorderSide(
color: Colors.white,
width: 3.0,
),
),
hintText: "Passwrod",
hintStyle: TextStyle(color: ColorPalette.hintColor),
),
style: TextStyle(color: Colors.white),
obscureText: true,
autofocus: false,
),
],
);
}
Widget _buildButton(BuildContext context) {
return Column(
children: <Widget>[
Padding(
padding: EdgeInsets.only(top: 16.0),
),
TextButton(
style: TextButton.styleFrom(backgroundColor: Colors.white,

),
onPressed: () {
Navigator.pushNamed(context, "/");
},
child: Text(
'Register',
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
'Login',
style: TextStyle(color: Colors.white),
),
onPressed: () {
Navigator.pushNamed(context, "/");
},
)
],
);
}