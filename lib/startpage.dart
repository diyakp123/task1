import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/audioplayer.dart';
import 'package:task1/homePage.dart';
import 'package:task1/infopage.dart';
import 'package:task1/login/loginPage.dart';
import 'package:task1/login/loginblocs/login_bloc.dart';

class startpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => startpagestate();
}

class startpagestate extends State<startpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(101, 122, 158, 0.8),
        title: Text("Start"),
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(101, 122, 158, 0.8),
                  textStyle: const TextStyle(
                    //color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BlocProvider(
                              create: (context) => loginBloc(),
                              child: loginPage())));
                },
                child: Text("Login")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(101, 122, 158, 0.8),
                  textStyle: const TextStyle(
                    //color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Go to Info page")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(101, 122, 158, 0.8),
                  textStyle: const TextStyle(
                    //color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => audioPlayer()));
                },
                child: Text("Go to Audio player")),
          ],
        ),
      ),
    );
  }
}
