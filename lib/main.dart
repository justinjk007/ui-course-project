import 'package:byke/LoginRegisterPage.dart';
import 'package:flutter/material.dart';
import 'page_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Byke',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginRegisterPage(),         // Go to the page with list of buttons
    );
  }
}
