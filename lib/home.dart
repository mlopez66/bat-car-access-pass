import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}
class _HomePageState extends State<HomePage>{
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  String _txt = 'Home';

  @override
  Widget build(BuildContext context) {
    print("homepage build");
    return  Center(
        child: Column(
            children : [
              Text(
                _txt,
                style: optionStyle,
              ),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      _txt = "btn has been clicked";
                    });
                  },
                  child: Text("click me")
              )]));
  }

}