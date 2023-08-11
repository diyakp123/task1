import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'infopage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
// String Stringresponse="";
  Map mapresponse = {};
  List listresponse = [];
  int ListSize = 0;

  Future<void> getData() async {
    try {
      final response =
          await http.get(Uri.https("reqres.in", "/api/users", {'page': "2"}));
      //print(response.body);
      if (response.statusCode == 200) {
        setState(() {
          //Stringresponse= response.body;
          mapresponse = jsonDecode(response.body);
          //print(mapresponse);
          listresponse = mapresponse['data'];
          ListSize = listresponse.length;
          print(listresponse[0].runtimeType);
        });
      }
    } on Exception catch (e) {
      print("error $e");
    }
  }

  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(101, 122, 158, 0.8),
        title: Text("Person Info"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          child: Column(
            children: [for (int i = 0; i < ListSize; i++) nameContainer(i)],
          ),
        ),
      )),
    );
  }

  Widget nameContainer(int i) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(
        child: Container(
          height: 70,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Color.fromRGBO(101, 122, 158, 0.7),
            borderRadius: BorderRadius.circular(10),
          ),
          child: listresponse.isEmpty
              ? Container()
              : Center(
                  child: Text(
                  listresponse[i]['first_name'].toString(),
                  style: TextStyle(fontSize: 20),
                )),
        ),
        onTap: () {
          // Map vals = listresponse[i].
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => infoPage(values: listresponse[i])),
          );
        },
      ),
    );
  }
}
