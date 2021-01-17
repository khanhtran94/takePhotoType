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
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
          itemCount: 20,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return ItemView();
          },
        ),
      ),
    );
  }
}
