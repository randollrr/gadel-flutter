import 'package:flutter/material.dart';

void main() => runApp(new GadelApp());

class GadelApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gade''l',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gade''l'),
        ),
        body: Center(
          child: Text('Alo mond. Nou la toujou!'),
        ),
      ),
    );
  }
}
