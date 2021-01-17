import 'package:flutter/material.dart';
import 'package:take_photo_type/models/type.dart';
import 'package:take_photo_type/views/item_view.dart';

class ItemsPage extends StatefulWidget {
  static final String routeName = '/ItemsPage';

  final Type type;
  ItemsPage({this.type});

  @override
  _ItemsPageState createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, Type> arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('${arguments['type'].name}'),
        ),
        body: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              child: ItemView(),
            );
          },
        ));
  }
}
