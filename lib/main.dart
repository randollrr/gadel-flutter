import 'package:flutter/material.dart';
import 'watchlist.dart';

void main() => runApp(new GadelApp());

class GadelApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gadel',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gadel'),
        ),
        body: Center(
          //child: Text('Alo mond. Nou la toujou!'),
          child: Watchlist(),
        ),
      ),
    );
  }
}
