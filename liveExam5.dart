import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Hello',
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,

        appBar: AppBar(

        centerTitle: true,
        title: Text('Profile', style: TextStyle(
        fontSize: 26
    ),),
    backgroundColor: Colors.blue,

    ),

    body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    CircleAvatar(
    radius: 45,
    backgroundColor: Colors.green,
    child: Icon(
    Icons.person, size: 80, color: Colors.white,
    ),
    ),

    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('Jhon Doe', style: TextStyle(
    fontSize: 35,
    color: Colors.green
    ),)
    ],

    ),

      RichText(text: TextSpan(
        text: 'Flutter batch 4 ',
        style: TextStyle(
            color: Colors.blue,
            fontSize: 28
        ),

      )),

    ],
        )
    );
    }
}