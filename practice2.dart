import 'package:flutter/material.dart';

import 'liveExam5.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Practice2',
    );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
appBar: AppBar(
   title: Text('Home'),
     ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              width: 200,
              height: 100,
              color: Colors.red,
              margin: EdgeInsets.all(16),
              child: Text('Hello'),
              alignment: Alignment.center,
            ),
            ElevatedButton(
              style:  ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
                textStyle: TextStyle(
                  fontSize: 24,
                      fontWeight: FontWeight.w500
                )
        ),
                onLongPress: () {
                  print('Email deleted');
                } ,

                onPressed: () {
              print('Email has been sent');
            } , child: Text('Send email')
            ),

          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.purple,
                textStyle: TextStyle(
                    fontSize: 24,
                    //fontWeight: FontWeight.w500
                )
            ),
            onLongPress: (){
              print('Long press');
            },
            onPressed: () {
            print('Resend Email');
          }, child: Text('Resend'),),


         IconButton(onPressed: () {}, icon: Icon(Icons.add)),

            OutlinedButton(onPressed: () {} , child: Text('Outlined Button')),
//input


            TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.black
              ),
              decoration: InputDecoration(
                fillColor: Colors.amber,
                filled: true,
                hintText: 'Enter your email address',
                hintStyle: TextStyle(
                  color: Colors.black
                ),

            suffixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                  label: Text('Enter your email'),
                labelStyle: TextStyle(
                  color: Colors.blue,
                ),

                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87)
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}