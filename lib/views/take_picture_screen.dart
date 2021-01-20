import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TakePictureScreen extends StatefulWidget {
  static final String routeName = '/TakePictureScreen';
  @override
  _TakePictureScreenState createState() => _TakePictureScreenState();
}

class _TakePictureScreenState extends State<TakePictureScreen> {
  File fileImage;
  List<File> _listImage = [];

  _openCamera(BuildContext context) async {
    var picture = await ImagePicker().getImage(source: ImageSource.camera);
    this.setState(() {
      fileImage = File(picture.path);
      _listImage.add(fileImage);
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDiaglog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('choice'),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  GestureDetector(
                    child: Text('Camera'),
                    onTap: () {
                      _openCamera(context);
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget _decideImageView() {
    if (fileImage == null) {
      return Text('No image');
    } else {
      return Image.file(
        fileImage,
        width: 400,
        height: 400,
      );
    }
  }

  Widget _listImageView(File file) {
    return Image.file(
      file,
      width: 400,
      height: 400,
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         _decideImageView(),
    //         RaisedButton(
    //           child: Icon(Icons.add_circle),
    //           onPressed: () {
    //             _showChoiceDiaglog(context);
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    // );
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
        children: _listImage.map((e) => _listImageView(e)).toList(),
      ),
      floatingActionButton: RaisedButton(
        child: Icon(Icons.add_circle),
        onPressed: () {
          _showChoiceDiaglog(context);
        },
      ),
    );
  }
}
