import 'package:flutter/material.dart';

const colorBlack=Colors.black;
const colorWhite=Colors.white;
const colorGreen=Colors.green;
const colorGrey=Colors.grey;
const colorWhite54=Colors.white54;

TextStyle styleBig(color){
  return TextStyle(
    fontSize: 30,fontWeight: FontWeight.bold,
    color:color
  );
}

TextStyle styleMedium(color){
  return TextStyle(
      fontSize: 19,fontWeight: FontWeight.bold,
      color:color
  );
}

TextStyle styleSmall(color){
  return TextStyle(
      fontSize: 15,fontWeight: FontWeight.w500,
      color:color
  );
}