import 'package:flutter/material.dart';
import 'package:take_photo_type/views/items_page.dart';
import 'package:take_photo_type/views/type_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/TypePage': (context) => TypePage(),
        '/ItemsPage': (context) => ItemsPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Type page'),
      ),
      body: SafeArea(
        child: TypePage(),
      ),
    );
  }
}
