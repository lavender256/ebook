import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen_mobile.dart';

class WellComeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://i.postimg.cc/9M8WtmxR/1.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Container(
            width: size.width * .65,
            height: size.height * .27,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "flamin",
                      style: TextStyle(
                          letterSpacing: 1.2,
                          fontWeight: FontWeight.w300,
                          fontSize: size.width * .15,
                          color: Colors.white)),
                  TextSpan(
                      text: "go.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * .15,
                          color: Colors.white))
                ])),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => HomeScreenMobile())),
                  child: Container(
                    width: size.width,
                    height: size.height * .1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Center(
                      child: Text(
                        "start reading",
                        style: TextStyle(color: Colors.black,letterSpacing: 1.1,fontSize: size.width*.06,fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
