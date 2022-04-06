import 'package:book/data/data.dart';
import 'package:book/models/book.dart';
import 'package:book/widget/best_day_card.dart';
import 'package:book/widget/chapter_card.dart';
import 'package:book/widget/my_rich_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class ReadScreenMobile extends StatefulWidget {
  final Book book;

  ReadScreenMobile({this.book});

  @override
  _ReadScreenMobileState createState() => _ReadScreenMobileState();
}

class _ReadScreenMobileState extends State<ReadScreenMobile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: scaffoldColorBook,
        body: Container(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    height: size.height*.85,
                    child: Stack(
                      children: [
                        Positioned(
                            top: 0,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * .04,
                                  vertical: size.height * .03),
                              height: size.height * .44,
                              width: size.width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage("https://i.postimg.cc/fThwcrCv/white-abstract-background-23-2148810113.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(45),
                                    bottomRight: Radius.circular(45)),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    child: Container(
                                      height: size.height * .32,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            widget.book.name,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.width * .08),
                                          ),
                                          Text(
                                            widget.book.writer,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: size.width * .06,
                                                color: Colors.black87),
                                          ),
                                          Text(
                                            "This book is bowl \nshit dont waist your \nfucking time",
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Container(
                                            width: size.width * .3,
                                            height: size.height * .07,
                                            decoration: BoxDecoration(
                                                color: mainColorBook,
                                                borderRadius: BorderRadius.circular(20)),
                                            child: Center(
                                              child: Text(
                                                "Read",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: size.width * .41,
                                    bottom: size.height*.05,
                                    child: Container(
                                      width: size.width * .14,
                                      height: size.height * .2,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              icon: Icon(Icons.favorite_outline),
                                              onPressed: null),
                                          Container(
                                            height: size.height * .12,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(25),
                                                color: Colors.white),
                                            child: Column(
                                              children: [
                                                IconButton(
                                                    icon: Icon(
                                                      Icons.star,
                                                      color: Colors.orange,
                                                    ),
                                                    onPressed: null),
                                                Text(
                                                  widget.book.rate,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: size.height * .055,
                                    child: Container(
                                      width: size.width * .33,
                                      height: size.height * .28,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(widget.book.imageUrl),
                                              fit: BoxFit.cover)),
                                    ),
                                  )
                                ],
                              ),
                            )),
                        Positioned(

                            top: size.height * .35,
                            child: Container(
                              width: size.width,
                              height: size.height*.5,
                              padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                             scrollDirection: Axis.vertical,
                                  itemCount: chapterList.length,
                                  itemBuilder: (BuildContext ,int index){
                                    Chapter chapter=chapterList[index];
                                    return ChapterCard(
                                        chapter:chapter
                                    );
                                  }),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height*.04,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width * .05),
                    width: size.width,
                    height: size.height*.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyRichText(
                          rich2: "like",
                          rich1: "You might also ",
                        ),
                        BestDayCard(),
                      ],),
                  ),
                  SizedBox(height: size.height*.02,),
                ],
              ),
            )));
  }
}
