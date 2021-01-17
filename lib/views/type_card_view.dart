import 'dart:math';

import 'package:flutter/material.dart';
import 'package:take_photo_type/models/type.dart';
import 'package:take_photo_type/views/items_page.dart';

class TypeCardView extends StatelessWidget {
  Type type;
  TypeCardView({this.type});
  final listColor = [Colors.amber, Colors.yellow, Colors.blueAccent];
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    var nextInt = random.nextInt(3);
    return InkWell(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              this.type.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        decoration: BoxDecoration(
            color: listColor[random.nextInt(3)],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                listColor[random.nextInt(3)].withOpacity(0.7),
                listColor[random.nextInt(3)]
              ],
            ),
            borderRadius: BorderRadius.circular(20)),
      ),
      onTap: () {
        print('tap to type ${this.type.name}');
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ItemsPage(
                  type: this.type,
                )));
      },
      splashColor: Colors.deepOrangeAccent,
    );
  }
}
