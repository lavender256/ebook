import 'package:flutter/material.dart';

import '../colors.dart';


class BestDayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .31,
      child: Stack(
        children: [
          Positioned(
              top: size.height * .04,
              child: Container(
                width: size.width * .88,
                height: size.height * .265,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),boxShadow: [BoxShadow(
                  color: Colors.black26,
                  blurRadius: 12,
                  offset: Offset(0,2),

                )]),
              )),
          Positioned(
              top: 0,
              right: size.width * .07,
              child: Container(
                width: size.width * .3,
                height: size.height * .22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage("https://i.postimg.cc/V6b744gq/98.jpg"),
                        fit: BoxFit.cover)),
              )),
          Positioned(
              bottom: size.height*.005,
              right: size.width * .02,
              child: Container(
                width: size.width * .4,
                height: size.height * .08,
                decoration: BoxDecoration(
                    color: mainColorBook,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Center(
                  child: Text(
                    "Read",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
          Positioned(
              top: size.height * .04,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * .03, vertical: size.height * .02),
                width: size.width * .55,
                height: size.height * .155,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "How To Win\nFriends & Influence",
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
                          fontSize: size.width * .05),
                    )
                  ],
                ),
              )),
          Positioned(
              left: 0,
              bottom: size.height * .02,
              child: Container(child:Row(children: [
                Container(
                  width: size.width * .12,
                  height: size.height * .11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          onPressed: null),
                      Text(
                        " 5",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * .05),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: size.width*.03,left: size.width*.02),
                  width: size.width*.4,
                  height: size.height*.1,
                  child: Text("This book is bowl shitdont waist\nyour fucking time",style: TextStyle(
                    color: Colors.black54,fontWeight: FontWeight.w500
                  ),),
                )
              ],)

              ))
        ],
      ),
    );
  }
}
