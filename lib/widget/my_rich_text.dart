import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  final String rich1;
  final String rich2;


  MyRichText({this.rich1, this.rich2});

  @override
  Widget build(BuildContext context) {  var size = MediaQuery.of(context).size;
    return RichText(
        text: TextSpan(children: [
          TextSpan(
              text: rich1,
              style: TextStyle(
                  fontSize: size.width * .085,
                  color: Colors.black,
                  letterSpacing: .01,
                  fontWeight: FontWeight.w300)),
          TextSpan(
              text: rich2,
              style: TextStyle( fontSize: size.width * .085,
                  color: Colors.black, fontWeight: FontWeight.bold))
        ]));
  }
}
