import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.green,
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.add_business_outlined),
      ), // Added a comma here
      title: Text('Home'),

      bottom: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: SizedBox(
          height: 100,
        ),
      ),
    ),
    import 'package:flutter/material.dart';
    void main(){
    runApp(MyApp());

    }

    class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.green,
    centerTitle: true,
    actions: <Widget>[
    IconButton(
    icon: const Icon(Icons.search),
    onPressed: () {},
    ),
    ],
    leading: IconButton(
    onPressed: () {},
    icon: const Icon(Icons.add_business_outlined),
    ), // Added a comma here
    title: Text('Home'),

    bottom: PreferredSize(
    preferredSize: Size.fromHeight(100),
    child: SizedBox(
    height: 100,
    ),
    ),
    ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('This is mod 5 Assignment', style: TextStyle(
    fontWeight : FontWeight.bold,
    )),

    RichText(
    text: TextSpan(
    text: 'My ',
    style: TextStyle(
    fontSize: 25,
    color: Colors.red,
    ),

    children: [
    TextSpan(
    text: 'phone ',
    style: TextStyle(
    fontSize: 20,
    color: Colors.blue,
    ),
    ),
    TextSpan(
    text: 'name ',
    style: TextStyle(
    fontSize: 20,
    color: Colors.purpleAccent,
    ),
    ),
    TextSpan(
    text: 'Your phone name',
    style: TextStyle(
    fontSize: 30,
    color: Colors.amber,
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ),
    );
    }
    }