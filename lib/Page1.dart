import 'package:flutter/material.dart';
import 'package:flutter_layout/Page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).push(_createRoute()),
          child: Text('Go!'),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 3.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final curveAnimation = CurvedAnimation(parent: animation, curve: curve);
        return SlideTransition(
          position: tween.animate(curveAnimation),
          child: child,
        );
      },
    );
  }
}
