import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:velha_guarda/screens/apa_screen.dart';
import 'package:velha_guarda/screens/ipa_screen.dart';
import 'package:velha_guarda/screens/pilsen_screen.dart';
import 'package:velha_guarda/screens/quadrupel_screen.dart';
import 'package:velha_guarda/screens/strong_screen.dart';

class ProductScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductScreenState();
  }
}

class ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/fab_icon.png"),
              ),
              title: Text(
                "Strong Ale",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 13.0),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => StrongScreen()));
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/fab_icon.png"),
              ),
              title: Text(
                "Quadrupel",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 13.0),
              ),
              onTap: () async {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => QuadrupelScreen()));
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/fab_icon.png"),
              ),
              title: Text(
                "Indian Pale Ale",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 13.0),
              ),
              onTap: () async {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => IpaScreen()));
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/fab_icon.png"),
              ),
              title: Text(
                "American Pale Ale",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 13.0),
              ),
              onTap: () async {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => ApaScreen()));
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage("images/fab_icon.png"),
              ),
              title: Text(
                "Pilsen",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 13.0),
              ),
              onTap: () async {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => PilsenScreen()));
              },
            ),
            Divider(),
          ],
        ),
      );
  }
}
