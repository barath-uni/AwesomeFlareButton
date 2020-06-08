import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutterawesomerivebutton/flutterawesomerivebutton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child:Column(
            children: <Widget>[
              Container(
                child: Card(
                  child: Text('This is a sample card\n\n\n\n\n'),
                ),
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                height:150,
                child: CircularAwesomeflarebutton(
                  onPress: (){
                    print("on press is fired");
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height:150,
                child: RectangularAwesomeflarebutton(
                  onPress: (){
                    print('Rectangular button is clicked');
                  },
                ),
              )
            ],
          )
          ),
        ),
    );
  }
}