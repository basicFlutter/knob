import 'package:flutter/material.dart';

mixin SizeClass{
  double designWidth = 360;
  double designHeight = 640;
  Size mainDesignSize = const Size(360, 640);

  set setDesignSize( Size designSize ) {
    mainDesignSize= designSize;
    designHeight = designSize.height;
    designWidth = designSize.width;
  }

  double getScreenWidth (BuildContext context) => MediaQuery.of(context).size.width;
  double getScreenHeight (BuildContext context) => MediaQuery.of(context).size.height-AppBar().preferredSize.height -
      MediaQuery.of(context).padding.top -
      MediaQuery.of(context).padding.bottom ;
  double getWidthFactor (BuildContext context) => getScreenWidth(context)/mainDesignSize.width;
  double getHeightFactor (BuildContext context) => getScreenHeight(context)/mainDesignSize.height;
  double getTextFactor (BuildContext context) => mainDesignSize.width/getScreenWidth(context);
  double getRadiusFactor (BuildContext context) {
    if(getHeightFactor(context) > getWidthFactor(context)){
      return getWidthFactor(context);
    }else{
      return getHeightFactor(context);
    }
  }


}

