import "package:flutter/material.dart";
import './chatroom.dart' as chat;
import './facts.dart' as facts;
import './about.dart' as about;

void main() {
  runApp(new MaterialApp(
    home: new MyTabs()
  ));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Games"), 
      backgroundColor: Colors.lightBlue,
      bottom: new TabBar(
        controller: controller,
        tabs: <Tab>[
         new Tab(icon: new Icon(Icons.chat)),
         new Tab(icon: new Icon(Icons.verified_user)),
         new Tab(icon: new Icon(Icons.favorite)),
        ]
       )
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new chat.Chat(),
          new facts.Facts(),
          new about.About()
        ],
      )
    );
  }
}
