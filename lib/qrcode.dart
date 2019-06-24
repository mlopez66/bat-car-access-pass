import 'package:flutter/material.dart';

class QRcodePage extends StatelessWidget{
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return  Text(
      'QR Code',
      style: optionStyle,
    );
  }

}