import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:velha_guarda/models/user_model.dart';
import 'package:velha_guarda/screens/NewLogin_screen.dart';
import 'package:velha_guarda/screens/home_screen.dart';
import 'package:velha_guarda/screens/product_screen.dart';

class QuadrupelScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuadrupelScreenState();
  }
}

class QuadrupelScreenState extends State<QuadrupelScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: Text('Quadrupel'),
        centerTitle: true,
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            }
        ),
      ),
      body: ListView(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 0.9,
            child: Carousel(
              images: [
                ExactAssetImage("images/12.jpg"),
                ExactAssetImage("images/strong2.jpg"),
                ExactAssetImage("images/strong3.png"),
              ],
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotBgColor: Colors.transparent,
              dotColor: Colors.orange,
              autoplay: false,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Quadrupel",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                  maxLines: 3,
                ),
                Text(
                  "Descrever aqui sobre a cerveja",
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                SizedBox(
                  height: 16.0,
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  "Descrição",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Cerveja com alto teor alcoólico",
                  style: TextStyle(fontSize: 16.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
