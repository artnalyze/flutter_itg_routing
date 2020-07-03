import 'package:flutter/material.dart';
import 'package:flutter_routing/home.dart';

class Contact extends StatelessWidget {
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Contact")),
        body: Center(
          child: RaisedButton(
              onPressed: () {
                 Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Home()));
              },
              child: Text("Back to Home"),
              color: Colors.red,
              textColor: Colors.white),
        ));
  }
}
