import 'package:flutter/material.dart';

Widget containerCustom({
  required double padding,
  required double height,
  required double width,
  required Color color,
  required double radius,
  required CrossAxisAlignment crossAxisAlignment ,
  required String firstText,
  required String secondText,
  required FontWeight fontWeight,
  required double fontSize,
  required double heightSizedBox
}){
  return Center(
    child: Container(
      height:height ,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius)
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          children: [
            Text(firstText,
            style: TextStyle(
              fontWeight: fontWeight,
              fontSize: fontSize

            ),),
            SizedBox(
              height:heightSizedBox ,
            ),
            Text(secondText)
          ],
        ),
      ),
    ),
  );

}