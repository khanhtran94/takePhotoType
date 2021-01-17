import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ItemView extends StatelessWidget {
  static final String routeName = '/ItemView';

  @override
  Widget build(BuildContext context) {
    //Todo: thay bang anh load tu local
    return Row(
      children: [
        ClipRRect(
            clipBehavior: Clip.hardEdge,
            child: Center(
              child: CachedNetworkImage(
                imageUrl: "http://via.placeholder.com/350x350",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            )),
        ClipRRect(
          clipBehavior: Clip.hardEdge,
          child: Center(
            child: CachedNetworkImage(
              imageUrl: "http://via.placeholder.com/350x350",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        )
      ],
    );
  }
}
