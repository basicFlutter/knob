import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:knob/color_picker.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Knob Demo',
      theme: ThemeData.dark(),

      home: MyHomePage(title: 'Flutter Knob Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double _minimum = 10;
  final double _maximum = 40;


  late double _knobValue;

  double _value = 25;
  bool winterState = false;

  bool summerState = false;

  bool auto = false;
  static const double minValue = 16;
  static const double maxValue = 40;
  static const double minAngle = 0;
  static const double maxAngle = 120;
  static const double sweepAngle = minAngle - maxAngle;
  static const double distanceToAngle = 0.005 * (minAngle - maxAngle);

  void valueChangedListener(double value) {
    if (mounted) {
      setState(() {
        _knobValue = value;
      });
    }
  }

  @override
  void initState() {
    super.initState();


  }

  @override
  Widget build(BuildContext context) {


    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


    void axisLabelCreated(AxisLabelCreatedArgs args) {
      if (args.text == '28' ||
          args.text == '30' ||
          args.text == '32' ||
          args.text == '34' ||
          args.text == '36' ||
          args.text == '40') {
        args.labelStyle =const GaugeTextStyle(
            color: Colors.green,
            // fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontFamily:
            'DigitalNumbers',
            fontSize:11

        );
        args.canRotate = true;
      }

      if (args.text == '16') {
        args.text = 'off';
      }
    }

    double _angle;
    double _normalisedValue;

    _normalisedValue = (_value - minValue) / (maxValue - minValue);
    _angle = (minAngle + _normalisedValue * sweepAngle) / 360 * 2 * pi;



    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: screenWidth * 0.042,
              height: screenHeight * 0.042,
              child: SvgPicture.asset("assets/images/insta.svg",
                  color: Colors.grey),
            ),
            SizedBox(
              width:screenWidth*0.02,
            ),
            const Text("basic_flutter",style: TextStyle(color: Colors.grey),),
          ],
        ),
        centerTitle: true,
      ),
     body: const ColorPicker(),
     /* body: Center(
        child:Stack(
          alignment: Alignment.center,
          children: [
            SfRadialGauge(
                axes: <RadialAxis>[
                  RadialAxis(
                    startAngle: 150,
                    endAngle: 270,
                    radiusFactor: 0.83,
                    showAxisLine: true,
                    minorTickStyle:  MinorTickStyle(color: Colors.grey[600],
                        thickness: 1.2,
                        length: 0.02,
                        lengthUnit: GaugeSizeUnit.factor),
                    majorTickStyle:  const MajorTickStyle(color: Colors.grey,
                        thickness: 1.2,
                        length: 0.03,
                        lengthUnit: GaugeSizeUnit.factor),

                    isInversed: true,
                    minimum: 16,
                    maximum: 40,
                    interval: 4,

                    axisLineStyle: AxisLineStyle(
                      color: Colors.grey[800],
                      cornerStyle: CornerStyle.bothCurve,
                    ),
                    labelsPosition: ElementsPosition.outside,
                    ticksPosition: ElementsPosition.outside,

                    axisLabelStyle:const GaugeTextStyle(
                      color: Colors.green,


                      fontSize: 11,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontFamily:
                      'DigitalNumbers',
                    ),
                    onLabelCreated: axisLabelCreated,
                  ),
                ]),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:const NeumorphicBoxShape.circle(),
                depth: -15,
                border:const NeumorphicBorder(
                  width: 1,
                ),
                shadowDarkColor: Colors.black,
                color: Colors.grey[800],
              ),
              child: Container(
                width: screenWidth * 0.57,
                decoration:const BoxDecoration(shape: BoxShape.circle),
              ),
            ),
            GestureDetector(
              onVerticalDragEnd: (DragEndDetails details){

                setState((){});
              },
              onVerticalDragUpdate: (DragUpdateDetails details) {
                setState((){
                  double changeInY =
                  -details.delta.dy; // Note the negative sign
                  double changeInValue = distanceToAngle * changeInY;
                  double newValue = _value + changeInValue;
                  double clippedValue = min(max(newValue, 16), 40);
                  _value = clippedValue;
                  _normalisedValue = (_value - minValue) / (maxValue - minValue);
                  _angle = (minAngle + _normalisedValue * sweepAngle) / 360 * 2 * pi;
                });
              },
              child: Transform.rotate(
                  angle: _angle,
                  child: Neumorphic(
                      style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape:const NeumorphicBoxShape.circle(),
                        depth: 13,
                        border: NeumorphicBorder(
                          color: Colors.grey[600],
                          width: 1,
                        ),
                        shadowDarkColor: Colors.black,
                        oppositeShadowLightSource: false,
                        shadowLightColor:  Colors.grey[800],
                        color: Theme.of(context).bottomAppBarColor,
                      ),
                      child: Container(
                        decoration:const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.grey[800],
                        ),
                        width: screenWidth * 0.52,
                        height: screenWidth * 0.52,

                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Icon(
                            Icons.keyboard_arrow_up_outlined,
                            color: _value == 16 ? Colors.grey : Colors.green,
                            size: 28,
                          ),
                        ),
                      ))),
            ),

            SizedBox(
              width: screenWidth*0.30,
              height: screenHeight*0.15,
              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  SizedBox(
                    height: screenHeight*0.02,
                  ),

                  const Text("Temperature",style: TextStyle(color: Colors.grey),),

                  SizedBox(
                    height: screenHeight*0.02,
                  ),

                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: _value.toStringAsFixed(0) == '16' ? 'off' : _value.toStringAsFixed(0),
                          style: TextStyle(color: _value.toStringAsFixed(0) == '16' ? Colors.grey:Colors.grey,

                            fontSize:  _value.toStringAsFixed(0) == '16' ? 28 : 35,
                            fontFamily:
                            'DigitalNumbers',
                          )
                      ),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(4, -25),
                          child: Text(
                            _value.toStringAsFixed(0) == '16' ? '' :'.C',
                            textScaleFactor: 0.9,
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                      )
                    ]),
                  ),




                ],
              ),
            ),



          ],
        ),


        *//*
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(_knobValue.toString()),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  var value =
                      Random().nextDouble() * (_maximum - _minimum) + _minimum;
                  _controller.setCurrentValue(value);
                },
                child: const Text('Update Knob Value'),
              ),
              const SizedBox(height: 75),
              Container(
                child: Knob(
                  controller: _controller,
                  width: 200,
                  height: 200,
                  style: KnobStyle(
                    labelStyle: Theme.of(context).textTheme.bodyText1,
                    tickOffset: 5,
                    controlStyle: ControlStyle(
                      backgroundColor: Colors.red,
                      glowColor: Colors.white10,
                      shadowColor: Colors.grey,
                      tickStyle: ControlTickStyle(
                        color: Colors.transparent,

                      )
                    ),
                    labelOffset: 5,
                    minorTicksPerInterval:2,
                  ),
                ),
              ),
            ],
          ),

           *//*
      ),*/
    );
  }


}