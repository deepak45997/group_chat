
import 'package:flutter/material.dart';

class TextStyles{

 static TextStyle regularText(Color color, double fontSize)
 {
   return TextStyle(
     fontWeight: FontWeight.w400,
     fontSize: fontSize,
     color: color,
   );
 }

 static TextStyle mediumText(Color color, double fontSize)
 {
   return TextStyle(
     fontWeight: FontWeight.w500,
     fontSize: fontSize,
     color: color,
   );
 }

 static TextStyle boldText(Color color, double fontSize)
 {
   return TextStyle(
     fontWeight: FontWeight.w600,
     fontSize: fontSize,
     color: color,
   );
 }


}