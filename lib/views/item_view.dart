import 'package:flutter/material.dart';
import 'package:take_photo_type/views/photo.dart';

class ItemView extends StatelessWidget {
  static final String routeName = '/ItemView';

  @override
  Widget build(BuildContext context) {
    //Todo: thay bang anh load tu local
    List<Photo> listPhoto = [];
    for (var i = 0; i < 4; i++) {
      listPhoto.add(Photo(
        path: 'http://via.placeholder.com/350x350',
      ));
    }

    return SingleChildScrollView(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: listPhoto.toList(),
        ),
        Text('${DateTime.now()}')
      ],
    ));
  }
}
