import 'package:flutter/material.dart';
import 'package:flutter_routing/about.dart';
import 'package:flutter_routing/contact.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Home")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => About(),
                          settings: RouteSettings(
                            arguments: "This is data from home"
                          )));
                  },
                  child: Text("Go about"),
                  color: Colors.teal,
                  textColor: Colors.white),
              RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(
                          builder: (context) => Contact()));
                  },
                  child: Text("Go to Contact"),
                  color: Colors.blue,
                  textColor: Colors.white),
              RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/setting');
                  },
                  child: Text("Go to Setting"),
                  color: Colors.brown,
                  textColor: Colors.white),
            ],
          ),
        ));
  }
}
