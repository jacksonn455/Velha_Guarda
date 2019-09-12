import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:velha_guarda/screens/apa_screen.dart';
import 'package:velha_guarda/screens/home_screen.dart';
import 'package:velha_guarda/screens/ipa_screen.dart';
import 'package:velha_guarda/screens/pilsen_screen.dart';
import 'package:velha_guarda/screens/quadrupel_screen.dart';
import 'package:velha_guarda/screens/strong_screen.dart';

class InfoScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InfoScreenState();
  }
}

class InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: Text('Informações'),
        centerTitle: true,
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
            }
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("images/temperature.png"),
            ),
            title: Text(
              "Temperatura do freezer",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 13.0),
            ),
            onTap: () {
            freezer(context);
            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("images/temperature.png"),
            ),
            title: Text(
              "Temperatura da geladeira",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 13.0),
            ),
            onTap: () {
              geladeira(context);
            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("images/wifi.jpg"),
            ),
            title: Text(
              "Rede wifi",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 13.0),
            ),
            onTap: () async {

            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("images/wifi3.png"),
            ),
            title: Text(
              "Qualidade do sinal wifi",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 13.0),
            ),
            onTap: () async {

            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
freezer(BuildContext context){
  Alert(
    context: context,
    type: AlertType.warning,
    title: "Temperatura de  -2,5ºC",
    buttons: [
      DialogButton(
        child: Text(
          "OK",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.orange,
        width: 120,
      )
    ],
  ).show();
}

geladeira(BuildContext context){
  Alert(
    context: context,
    type: AlertType.warning,
    title: "Temperatura de  2ºC",
    buttons: [
      DialogButton(
        child: Text(
          "OK",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        color: Colors.orange,
        width: 120,
      )
    ],
  ).show();
}