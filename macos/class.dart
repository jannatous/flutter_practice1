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
          leading: Icon(Icons.add_business_outlined),
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
              Text('This is mod 5 Assignment'),
              Style: TextStyle(
                fontWeight.bold,
              ),
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
