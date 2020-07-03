import 'package:flutter/material.dart';
import 'package:flutter_routing/home.dart';

class Setting extends StatelessWidget {
  const Setting({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Setting")),
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
