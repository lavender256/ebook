import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class ContinueReadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .17,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25),boxShadow: [BoxShadow(
        color: Colors.black26,
        blurRadius: 12,
        offset: Offset(0,2),

      )]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width*.03),
                  height: size.height*.14,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                Text(
                  "Crushing & Influence",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * .05),
                ),
                Text(
                  "Gary Venchuck",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: size.width * .04),
                ),
              ])),
              Container(margin: EdgeInsets.only(left: size.width*.01),
                width: size.width * .5,
                height: size.height * .02,
                decoration: BoxDecoration(
                    color: mainColorBook,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(55))),
              )
            ],
          ),
          Container(margin: EdgeInsets.only(right: size.width*.02),
            width: size.width * .25,
            height: size.height * .15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage("https://i.postimg.cc/SRgmdyDY/96.jpg"),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
