import 'package:circle_color_picker_view/circle_color_picker_view.dart';
import 'package:flutter/material.dart';
import 'package:knob/my_widget/my_text.dart';
import 'package:knob/my_widget/rectangle.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({Key? key}) : super(key: key);

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {

  int redColor = 255;
  int greenColor = 255;
  int blueColor = 255;
  Color mainColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [

          const SizedBox(
            height: 80,
          ),
          ColorPickerView(
              initialColor: Colors.white,
              radius:  160 ,

              onEnded:(details) async{

              },

              colorListener: (color) {
                redColor = color.red;

                greenColor = color.green;
                blueColor = color.blue;
                mainColor = color;
                setState(() {

                });
              }),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const SizedBox(
                              height: 20,
                            ),
                            MyRectangle(
                              width: 50,
                              height: 50,
                              borderColor: Colors.transparent,
                              borderRadius: 10,
                              mainColor: Colors.transparent,
                              child: Row (
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:const  [
                                  MyText(
                                    text: "Red :",
                                    textColor: Colors.red,
                                    fontSize: 18,
                                  ),


                                ],
                              ),
                            ),
                            MyRectangle(
                              width: 80,
                              height: 50,
                              borderColor: Colors.transparent,
                              borderRadius: 10,
                              mainColor: Colors.transparent,
                              child: Row (
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  MyText(
                                    text: "Green :",
                                    textColor: Colors.green,
                                    fontSize: 18,
                                  ),



                                ],
                              ),
                            ),
                            MyRectangle(
                              width: 85,
                              height: 50,
                              borderColor: Colors.transparent,
                              borderRadius: 10,
                              mainColor: Colors.transparent,
                              child: Row (
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  const [

                                  MyText(
                                    text: "Blue :",
                                    textColor: Colors.blue,
                                    fontSize: 18,
                                  ),


                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const SizedBox(
                              height: 20,
                            ),
                            MyRectangle(
                              width: 80,
                              height: 50,
                              borderColor: Colors.transparent,
                              borderRadius: 10,
                              mainColor: Colors.transparent,
                              child: Row (
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  MyText(
                                    text: redColor.toString(),
                                    textColor: Colors.grey,
                                    fontSize: 18,
                                  ),


                                ],
                              ),
                            ),
                            MyRectangle(
                              width: 97,
                              height: 50,
                              borderColor: Colors.transparent,
                              borderRadius: 10,
                              mainColor: Colors.transparent,
                              child: Row (
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [

                                  MyText(
                                    text: greenColor.toString(),
                                    textColor: Colors.grey,
                                    fontSize: 18,
                                  ),


                                ],
                              ),
                            ),
                            MyRectangle(
                              width: 85,
                              height: 50,
                              borderColor: Colors.transparent,
                              borderRadius: 10,
                              mainColor: Colors.transparent,
                              child: Row (
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [

                                  MyText(
                                    text: blueColor.toString(),
                                    textColor: Colors.grey,
                                    fontSize: 18,
                                  ),

                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                color: mainColor,

                                borderRadius: const BorderRadius.all(Radius.circular(200))
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          MyText(
                            text: '0XFF${mainColor.red.toRadixString(16).toUpperCase()}${mainColor.green.toRadixString(16).toUpperCase()}${mainColor.blue.toRadixString(16).toUpperCase()}',
                            textColor: Colors.grey,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

          ),

        ],
      ),
    );

  }



}

