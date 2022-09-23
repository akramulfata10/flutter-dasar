import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const name = "akramulfata";
    // const nim = "2020573010004";
    // const name1 = 'akramulfata';
    // const nim1 = 93009029309;
    // const height1 = 1.85;
    // String data(String name, int age, double height) {
    //   return "Namaku $name1. nimku $nim1, Tinggiku $height1 meter";
    // }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("belajar ui succinctly  : $name")),
        body: Container(
          margin: EdgeInsets.all(100),
          padding: EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            shape: BoxShape.circle,
          ),
          child: Text('Container'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: () {
            print('oh , it is cold outside');
          },
        ),
      ),
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.lightBlue,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
