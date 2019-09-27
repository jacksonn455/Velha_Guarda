import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:velha_guarda/models/user_model.dart';
import 'package:velha_guarda/screens/NewLogin_screen.dart';
import 'package:velha_guarda/screens/home_screen.dart';
import 'package:velha_guarda/screens/product_screen.dart';

class ApaScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ApaScreenState();
  }
}

class ApaScreenState extends State<ApaScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('American Pale Ale', style: TextStyle(color: Colors.white)),
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
                ExactAssetImage("images/8.jpg"),
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
                  "American Pale Ale",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                  maxLines: 3,
                ),
                Text(
                  "Nome escolhido para a cerveja",
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
                  "Descrever aqui sobre a cerveja",
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
