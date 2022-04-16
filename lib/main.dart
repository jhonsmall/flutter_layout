import 'package:flutter/material.dart';
import 'package:flutter_layout/basic_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Floating App Bar';
    return MaterialApp(
      title: title,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text(title),
              floating: true,
              flexibleSpace: Placeholder(),
              expandedHeight: 200.0,
            ),
            // Show other sliver stuff
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 600,
                  color: Colors.blue[200],
                  child: const Center(
                    child: Text(
                      'Settings Tab',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  height: 1200,
                  color: Colors.pink,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
