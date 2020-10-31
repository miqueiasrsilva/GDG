import 'package:flutter/material.dart';
import 'package:tintin/pages/home/home.page.dart';
import 'package:tintin/pages/lista/lista.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListaPage(),
    );
  }
}
