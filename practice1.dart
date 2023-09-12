import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text('Home'),
          leading: Icon(
            Icons.add_business_outlined,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
    );
  }
}