import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Container(
              color: Colors.blue,
              alignment: Alignment.center,
              width: double.infinity,
              height: 100.0,
              child: AspectRatio(
                aspectRatio: 1/2,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),
          )
        )
    );
  }

}