import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class infoPage extends StatefulWidget {
  Map values;
  infoPage({super.key, required this.values});

  @override
  State<StatefulWidget> createState() => infoPageState(values);
}

class infoPageState extends State<infoPage> {
  Map persondetails;
  infoPageState(this.persondetails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(101, 122, 158, 0.8),
        title: Text("Person Detail"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(persondetails['avatar'].toString()),
              ),
              SizedBox(
                height: 20,
                width: double.maxFinite,
              ),
              myRow("ID", persondetails['id'].toString()),
              myRow("Email", persondetails['email'].toString()),
              myRow("First Name: ", persondetails['first_name'].toString()),
              myRow("Last Name: ", persondetails['last_name'].toString())
              // myText(persondetails['first_name'].toString()),
              // myText(persondetails['last_name'].toString())
            ],
          ),
        ),
      ),
    );
  }

  Widget myRow(String id, String val) {
    return Row(
      children: [
        myText(id),
        myText(val),
      ],
    );
  }

  Widget myText(String s) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        s,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
