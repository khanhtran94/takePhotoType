import 'dart:io';

import 'package:flutter/material.dart';
import 'package:take_photo_type/views/take_picture_screen.dart';

class ItemImagesPage extends StatefulWidget {
  static final String routeName = '/ItemIamgesPage';
  @override
  _ItemImagesPageState createState() => _ItemImagesPageState();
}

class _ItemImagesPageState extends State<ItemImagesPage> {
  List<File> _listImage = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item ${DateTime.now()}'),
      ),
      body: GridView(
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
      floatingActionButton: TakePictureScreen(),
    );
  }
}
