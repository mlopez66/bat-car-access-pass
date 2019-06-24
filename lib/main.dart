import 'package:flutter/material.dart';
import './home.dart';
import './qrcode.dart';
import './settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bat car 1',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Template(title: 'Bat car 1'),
    );
  }
}

class Template extends StatefulWidget {
  Template({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _pagesList = <Widget>[
    HomePage(),
    QRcodePage(),
    SettingsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text(widget.title))
          ],

        ),
      ),
      body: Stack(
          children: <Widget>[
            Center(  //
              child: Image(
                image: AssetImage('assets/bg2.jpeg'),
                height: size.height,
                width: size.width,
                fit: BoxFit.fill,
              ),
            ),
            Center(
              child: _pagesList.elementAt(_selectedIndex),
            )
          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            title: Text('QR Code'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
