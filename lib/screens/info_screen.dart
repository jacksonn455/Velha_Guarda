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
              "Temperatura",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 13.0),
            ),
            onTap: () {
            Confirmacao(context);
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
Confirmacao(BuildContext context){
  Alert(
    context: context,
    type: AlertType.warning,
    title: "Temperatura de  3º C",
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