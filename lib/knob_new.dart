import 'package:flutter/material.dart';

class KnobNew extends StatefulWidget {
  const KnobNew({Key? key}) : super(key: key);

  @override
  State<KnobNew> createState() => _KnobNewState();
}

class _KnobNewState extends State<KnobNew> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        // appBar: appbar,
        body: Center(
          // child: Container(
          //     width: screenWidth ,
          //     height: screenHeight ,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       gradient: LinearGradient(
          //           begin: Alignment.bottomCenter,
          //           end: Alignment.topRight,
          //
          //
          //           colors: [
          //
          //             Color(0xff212121),
          //             Color(0xff181818),
          //           ])
          //     ),
          //     child: Column(
          //       children: [
          //         SizedBox(
          //           // color: Colors.black87,
          //           height: screenHeight * 0.6,
          //           width: screenWidth * 0.9,
          //           child: Stack(
          //             alignment: Alignment.center,
          //             children: [
          //               SfRadialGauge(axes: <RadialAxis>[
          //                 RadialAxis(
          //                   startAngle: 150,
          //                   endAngle: 270,
          //                   radiusFactor: 0.9,
          //                   showAxisLine: true,
          //
          //                   isInversed: true,
          //                   minimum: 16,
          //                   maximum: 40,
          //                   interval: 4,
          //                   // majorTickStyle: MajorTickStyle(
          //                   //     length: 15, dashArray: <double>[5, 2.5]),
          //                   // minorTickStyle: MinorTickStyle(
          //                   //     length: 10, dashArray: <double>[3, 2.5]),
          //                   axisLineStyle: AxisLineStyle(
          //                     // color: Colors.green,
          //                       gradient:  SweepGradient(
          //                           colors: [
          //                             _value ==16 ? Colors.grey.withOpacity(0.9) : Colors.blue.withOpacity(0.8),
          //                             _value ==16 ? Colors.grey.withOpacity(0.7)  : Colors.blue.withOpacity(0.7),
          //                             _value ==16 ? Colors.grey.withOpacity(0.5)  : Colors.red,
          //                           ]
          //                       )
          //                   ),
          //                   labelsPosition: ElementsPosition.outside,
          //                   ticksPosition: ElementsPosition.outside,
          //                   axisLabelStyle: GaugeTextStyle(
          //                     color: Colors.green,
          //                     fontSize: screenWidth*0.03,
          //                     fontStyle: FontStyle.italic,
          //                     fontWeight: FontWeight.bold,
          //                     fontFamily:
          //                     'DigitalNumbers',
          //                   ),
          //                   onLabelCreated: axisLabelCreated,
          //                 ),
          //               ]),
          //               Neumorphic(
          //                 style: NeumorphicStyle(
          //                   shape: NeumorphicShape.concave,
          //                   boxShape:const NeumorphicBoxShape.circle(),
          //                   depth: -12,
          //                   border:const NeumorphicBorder(
          //                     width: 1,
          //                   ),
          //                   shadowDarkColor: Colors.black,
          //                   color: Colors.grey[600],
          //                 ),
          //                 child: Container(
          //                   width: screenWidth * 0.57,
          //                   // height: screen_width*0.6,
          //                   decoration:const BoxDecoration(shape: BoxShape.circle),
          //                 ),
          //               ),
          //               GestureDetector(
          //                 onVerticalDragEnd: (DragEndDetails details){
          //                   if(_value == 16 ){
          //                     // context.read<CubitClass>().packageOff();
          //                     summerState = true;
          //                     winterState = false;
          //                     auto = false;
          //                   }
          //                   else{
          //                     // context.read<CubitClass>().packageOn(_value);
          //                     summerState = false;
          //                     winterState = true;
          //                     auto = false;
          //                   }
          //                   // print('end: ${int.parse(_value.toStringAsFixed(0))}');
          //                 },
          //
          //                 onVerticalDragUpdate: (DragUpdateDetails details) {
          //                   double changeInY =
          //                   -details.delta.dy; // Note the negative sign
          //                   double changeInValue = distanceToAngle * changeInY;
          //                   double newValue = _value + changeInValue;
          //                   double clippedValue = min(max(newValue, 16), 40);
          //                   // context.read<CubitClass>().changeTempPackage(clippedValue);
          //
          //                   //  _setValue(clippedValue);
          //                 },
          //                 child: Transform.rotate(
          //                     angle: _angle,
          //                     child: Neumorphic(
          //                         style: NeumorphicStyle(
          //                           shape: NeumorphicShape.flat,
          //                           boxShape:const NeumorphicBoxShape.circle(),
          //                           depth: 12,
          //                           // lightSource: LightSource.top,
          //
          //                           border:const NeumorphicBorder(
          //                             color: Colors.grey,
          //                             width: 1,
          //                           ),
          //                           shadowDarkColor: Colors.black,
          //                           oppositeShadowLightSource: false,
          //                           shadowLightColor: _value== 16 ? Colors.white54: Colors.white,
          //                           color: Theme.of(context).bottomAppBarColor,
          //                         ),
          //                         child: Container(
          //                           decoration:const BoxDecoration(
          //                             shape: BoxShape.circle,
          //                           ),
          //                           width: screenWidth * 0.52,
          //                           height: screenWidth * 0.52,
          //                           child: Align(
          //                             alignment: Alignment.topCenter,
          //                             child: Icon(
          //                               Icons.keyboard_arrow_up_outlined,
          //                               color: _value <= 28
          //                                   ? Colors.lightBlue
          //                                   : Colors.redAccent,
          //                               size: 30,
          //                             ),
          //                           ),
          //                         ))),
          //               ),
          //
          //               SizedBox(
          //                 width: screenWidth*0.30,
          //                 height: screenHeight*0.15,
          //                 // color: Colors.red,
          //                 child: Column(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   crossAxisAlignment: CrossAxisAlignment.center,
          //
          //                   children: [
          //
          //
          //
          //                     RichText(
          //                       text: TextSpan(children: [
          //                         TextSpan(
          //                             text: _value.toStringAsFixed(0) == '16' ? 'off' : _value.toStringAsFixed(0),
          //                             style: TextStyle(color: _value.toStringAsFixed(0) == '16' ? Colors.grey:Colors.white70,
          //
          //                               fontSize:  _value.toStringAsFixed(0) == '16' ? screenWidth*0.06 : screenWidth*0.1,
          //                               // fontFamily: _value == 16
          //                               //   ? 'DigitalNumbers'
          //                               //   : 'Times New Roman',
          //                               fontFamily:
          //                               'DigitalNumbers',
          //                             )
          //                         ),
          //                         WidgetSpan(
          //                           child: Transform.translate(
          //                             offset: const Offset(4, -25),
          //                             child: Text(
          //                               _value.toStringAsFixed(0) == '16' ? '' :'.C',
          //                               //superscript is usually smaller in size
          //                               textScaleFactor: 0.9,
          //                               style: const TextStyle(color: Colors.grey),
          //                             ),
          //                           ),
          //                         )
          //                       ]),
          //                     ),
          //                     SizedBox(
          //                       height: screenHeight*0.01,
          //                     ),
          //
          //
          //
          //
          //
          //
          //                     Row(
          //                       mainAxisAlignment: MainAxisAlignment.center,
          //                       children: [
          //                         SizedBox(
          //                           width: screenWidth*0.05,
          //                         ),
          //                         RichText(
          //                           text: TextSpan(children: [
          //                             TextSpan(
          //                                 text: '28',
          //                                 style: TextStyle(color: Colors.grey,fontSize: screenWidth*0.05,
          //                                   fontFamily:
          //                                   'DigitalNumbers',
          //                                 )),
          //                             WidgetSpan(
          //                               child: Transform.translate(
          //                                 offset: const Offset(4, -15),
          //                                 child:const Text(
          //                                   '.C',
          //                                   //superscript is usually smaller in size
          //                                   textScaleFactor: 0.7,
          //                                   style: TextStyle(color: Colors.grey),
          //                                 ),
          //                               ),
          //                             )
          //                           ]),
          //                         ),
          //                         SizedBox(
          //                           width: screenWidth*0.01,
          //                         ),
          //                         // SizedBox(
          //                         //   // color: Colors.teal,
          //                         //   width: screenWidth * 0.1,
          //                         //   height: screenHeight * 0.05,
          //                         //   child: SvgPicture.asset("assets/images/tempratur.svg",
          //                         //       color: Colors.grey),
          //                         // ),
          //                       ],
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //
          //
          //
          //             ],
          //           ),
          //         ),
          //         Container(
          //           width: screenWidth*0.7,
          //           height: screenHeight*0.08,
          //
          //           decoration: BoxDecoration(
          //             color:const Color(0xff050410).withOpacity(0.5),
          //             border: Border.all(color: Colors.green,),
          //             borderRadius: BorderRadius.all(Radius.circular(screenWidth*0.04)),
          //           ),
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               InkWell(
          //                 onTap:(){
          //                   winterState = true;
          //                   summerState = false;
          //                   auto = false;
          //
          //                   setState(() {
          //
          //                   });
          //
          //                 },
          //                 child: Container(
          //
          //                   width: screenWidth*0.22,
          //                   height: screenHeight*0.07,
          //                   decoration: BoxDecoration(
          //                     // color: Colors.red,
          //                     // border: Border.all(color: Colors.white70),
          //                     borderRadius: BorderRadius.all(Radius.circular(screenWidth*0.04)),
          //                   ),
          //                   child: Center(
          //                     child: Icon(Icons.ac_unit_outlined,
          //                       color: winterState ? Colors.green:Colors.white70,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //               Container(
          //                 width: 2,
          //                 height: screenWidth*0.14,
          //                 color: Colors.green,
          //               ),
          //               InkWell(
          //                 onTap: (){
          //                   winterState = false;
          //                   summerState = true;
          //                   auto = false;
          //                   _value=16;
          //                   setState(() {
          //
          //                   });
          //                 },
          //                 child: SizedBox(
          //                   // color: Colors.green,
          //                   width: screenWidth*0.22,
          //                   height: screenHeight*0.07,
          //
          //                   child:  Center(
          //                     child: Icon( Icons.wb_sunny_outlined,
          //                       color: summerState ? Colors.green:Colors.white70,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //               Container(
          //                 width: 2,
          //                 height: screenWidth*0.14,
          //                 color: Colors.green,
          //               ),
          //               InkWell(
          //                 onTap: (){
          //                   winterState = true;
          //                   summerState = false;
          //                   auto = true;
          //                   setState(() {
          //
          //                   });
          //                 },
          //                 child: SizedBox(
          //                   // color: Colors.blue,
          //                   width: screenWidth*0.22,
          //                   height: screenHeight*0.07,
          //                   child: Center(
          //                     child: Text("Auto",
          //                         style: TextStyle(
          //                             color: auto ? Colors.green:Colors.white70,
          //                             fontWeight: FontWeight.bold
          //                         )),
          //                   ),
          //                 ),
          //               )
          //             ],
          //           ),
          //         )
          //       ],
          //     )
          // ),
        ),
      ),
    );
  }
}
