import 'package:flutter/material.dart';
import './pages/landing_page.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyStatelessWidget()
  ));
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Game Levels")),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new IconButton(
              icon: new Icon(Icons.flag, size: 40.0, color: Colors.pink),
              onPressed: () {
                navigateToLevel1(context);
              },
            ),
            new IconButton(
              icon: new Icon(Icons.flag, size: 40.0, color: Colors.pink),
              onPressed: null
            ),
            new IconButton(
              icon: new Icon(Icons.flag, size: 40.0, color: Colors.pink),
              onPressed: null
            )
          ]
        )
      )
    );
  }
}

Future navigateToLevel1(context)
async {
  Navigator.push(context,
  MaterialPageRoute(builder: (context) => LandingPage()));
}


class MyCard extends StatelessWidget {
  MyCard({this.icon});

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.only(bottom: 20.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              this.icon
            ]
          )
        )
      )
    );
  }
}
