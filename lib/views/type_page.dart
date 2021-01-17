import 'package:flutter/material.dart';
import 'package:take_photo_type/models/fake_date.dart';
import 'package:take_photo_type/views/type_card_view.dart';

class TypePage extends StatefulWidget {
  @override
  _TypePageState createState() => _TypePageState();
}

class _TypePageState extends State<TypePage> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      children: FAKE_TYPE.map((item) => TypeCardView(type: item)).toList(),
    );
  }
}
