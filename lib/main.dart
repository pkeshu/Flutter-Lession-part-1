import 'package:flutter/material.dart';
import './product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetImage = new AssetImage("assets/loginback.jpg");
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          brightness: Brightness.light,
          accentColor: Colors.deepPurple),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Easy List"),
          ),
          body: Stack(
            children: <Widget>[
              Container(
                decoration: new BoxDecoration(
                  image:
                      new DecorationImage(image: assetImage, fit: BoxFit.cover),
                ),
              ),
              new Center(
                child: ProductManager(
                  startingProduct: "Food Tester",
                ),
              )
            ],
          )),
    );
  }
}
