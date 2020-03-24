import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemNews extends StatelessWidget {
  final item;

  ItemNews(this.item);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 1.0,
          ),
          child: ListTile(
            title: Text(item.title),
            // subtitle: Text(item.link),
            trailing: Icon(Icons.link),
            onTap: () {
              if (canLaunch('${item.link}') != null) {
                launch(item.link);
              }
            },
          ),
        ),
        Divider(height: 1.0)
      ],
    );
  }
}