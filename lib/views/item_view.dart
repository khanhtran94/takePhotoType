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

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 100,
          child: ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: listPhoto,
          ),
        ),
        Text('${DateTime.now()}'),
      ],
    );
  }
}
