import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ItemView extends StatelessWidget {
  static final String routeName = '/ItemView';

  @override
  Widget build(BuildContext context) {
    //Todo: thay bang anh load tu local
    return ListView(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Center(
              child: FittedBox(
                child: CachedNetworkImage(
                  imageUrl: "http://via.placeholder.com/350x350",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.contain,
                ),
              ),
            )),
        Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Center(
              child: CachedNetworkImage(
                imageUrl: "http://via.placeholder.com/350x350",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.contain,
              ),
            )),
        Text('item ${DateTime.now()}')
      ],
    );
  }
}
