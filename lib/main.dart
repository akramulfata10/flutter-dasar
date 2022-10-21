import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class StaticBooks {
  static const String cdn = "https://cdn.syncfusion.com/";
  static const String path = "content/images/downloads/ebook/ebook-cover/";
  static const List<String> covers = [
    "visual-studio-for-mac-succinctly-v1.png",
  ];
}

class Succinctly extends StatelessWidget {
  List<Widget> stackScreen(double sizeX, double sizeY) {
    List<Widget> layout = [];
    Container cover = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              StaticBooks.cdn + StaticBooks.path + StaticBooks.covers[0]),
          fit: BoxFit.scaleDown,
        ),
      ),
    );
    layout.add(cover);
    final card = Positioned(
      top: sizeY / 1.45,
      left: sizeX / 4.2,
      child: Card(
        elevation: 15,
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('Succinctly Series'),
            ),
          ],
        ),
      ),
    );
    layout.add(card);
    return layout;
  }

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
        child: Stack(
      children: stackScreen(sizeX, sizeY),
    ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Succinctly(),
      theme: ThemeData(
        primaryColor: Colors.indigo,
        accentColor: Colors.amber,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
        ),
        brightness: Brightness.dark,
      ),
    );
  }
}
