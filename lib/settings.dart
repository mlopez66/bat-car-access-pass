import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SettingsState();
  }

}
class _SettingsState extends State<SettingsPage>{
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget>containers = [
    Container(color: Colors.white70),
    Container(color: Colors.white30)
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        child: Column(
            children: [
              TabBar(
                tabs: <Widget>[
                  Tab(text: "Setting 1"),
                  Tab(text: "Setting 2",)
                ],
              ),
              TabBarView(
                children: containers,
              )
            ])));
  }

}