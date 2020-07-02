import 'package:flutter/material.dart';

import 'package:designchallenge/src/pages/basic_page.dart';
import 'package:designchallenge/src/pages/scroll_page.dart';
import 'package:designchallenge/src/pages/buttons_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design',
      initialRoute: 'buttons',
      routes: {
        'basic'  : (BuildContext context) => BasicPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'buttons': (BuildContext context) => ButtonsPage(),
      },
    );
  }
}
