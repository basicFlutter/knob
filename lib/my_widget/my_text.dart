import 'package:flutter/material.dart';
class MyText extends StatelessWidget {
  const MyText({Key? key, required this.text, this.textColor = Colors.white54, this.fontSize = 15, this.fontWeight =FontWeight.bold,this.textAlign = TextAlign.left}) : super(key: key);
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override

  Widget build(BuildContext context) {
    return Text(text,
    style:TextStyle(color: textColor,fontSize: fontSize,fontWeight: fontWeight,) ,
      textAlign: textAlign,

    );
  }
}
