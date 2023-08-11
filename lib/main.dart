import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task1/audioplayer.dart';
import 'package:task1/infopage.dart';
import 'package:task1/login/loginPage.dart';
import 'package:task1/startpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: startpage() //loginPage()//HomePage()
        );
  }
}
