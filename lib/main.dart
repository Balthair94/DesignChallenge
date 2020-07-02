import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:designchallenge/src/pages/basic_page.dart';
import 'package:designchallenge/src/pages/scroll_page.dart';
import 'package:designchallenge/src/pages/buttons_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Color.fromRGBO(35, 37, 57, 1.0)));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design',
      initialRoute: 'buttons',
      routes: {
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'buttons': (BuildContext context) => ButtonsPage(),
      },
    );
  }
}
