import 'package:flutter/material.dart';

class BasicList extends StatelessWidget {
  const BasicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Title = 'Basic List';
    return MaterialApp(
      title: Title,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic List @jhonsmall'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),
      ),
    );
  }
}
