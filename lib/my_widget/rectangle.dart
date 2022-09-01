import 'package:flutter/material.dart';

class MyRectangle extends StatelessWidget {
   // MyRectangle({Key key}) : super(key: key);
  const MyRectangle({Key? key, required this.width,required  this.height, this.borderRadius = 5,
    this.onPressed,this.mainColor = Colors.white,this.borderColor= Colors.grey,
    this.child,this.borderWidth = 2,this.padding=0,
  this.bottomMargin=0,this.rightMargin=0,this.topMargin=0,this.leftMargin =0
  }) : super(key: key);

   final double width;
   final double height;
   final double borderRadius;
   final GestureTapCallback ? onPressed;
   final Color mainColor;
   final Color borderColor;
   final Widget ? child;
   final double borderWidth ;
   final double padding;
   final double leftMargin;
   final double rightMargin;
   final double topMargin;
   final double bottomMargin;
   @override



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,

      child: Container(
        padding: EdgeInsets.all(padding),
        margin: EdgeInsets.fromLTRB(leftMargin, topMargin, rightMargin, bottomMargin),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor,width:borderWidth )
        ),
        child: child,
      ),
    );
  }
}
