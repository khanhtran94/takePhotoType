import 'package:flutter/material.dart';
import 'package:take_photo_type/models/type.dart';

class ItemsPage extends StatefulWidget {
  final Type type;
  ItemsPage({this.type});

  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.type.name}'),
      ),
      body: Center(
        child: Text('img list'),
      ),
    );
  }
}
