import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//main fuction is starting point of app
void main() {
  runApp(MyApp());
}



// Create stateless widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}


//Create state full
class MyHomePage extends StatefulWidget {
  int number = 0;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // introduce variance
  int number = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [];
    data.add(Text('Assets',style: TextStyle(fontSize: 30, color: Colors.blue)));
    data.add(Text(number.toString(),style: TextStyle(fontSize: 30, color: Colors.blue)));
    data.add(Text('THB',style: TextStyle(fontSize: 30, color: Colors.blue)));

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('MY MONEY'),
        ),
      ),

      //Body
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: data

          ),),

      floatingActionButton: FloatingActionButton(onPressed: addNumber,
        child: Icon(Icons.add),),
    );
  }

  //Method
  void addNumber () {
    setState(() {
      number = number + 100;
    });
  }
}

