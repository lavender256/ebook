import 'package:book/models/book.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class BookCard extends StatefulWidget {
  final Book book;

  BookCard({this.book});

  @override
  _BookCardState createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: size.width * .05),
      width: size.width * .55,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: Container(
                width: size.width * .54,
                height: size.height * .35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.black26,
                    blurRadius: 12,
                    offset: Offset(0,2),

                  )]
                ),
              )),
          Positioned(
            top: 0,
            left: size.width * .04,
            child: Container(
              width: size.width * .37,
              height: size.height * .25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(widget.book.imageUrl),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
              top: size.height * .05,
              right: size.width * .01,
              child: Container(
                width: size.width * .15,
                height: size.height * .2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(icon: Icon(Icons.favorite_outline), onPressed: null),
                    Column(children: [
                      IconButton(icon: Icon(Icons.star,color: Colors.orange,), onPressed: null),
                      Text(
                        widget.book.rate,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],)

                  ],
                ),
              )),
          Positioned(
              bottom: size.height * .068,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: size.width*.04),
                width: size.width * .49,
                height: size.height * .08,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.book.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      widget.book.writer,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              bottom: 0,
              child: Container(
                width: size.width * .54,
                height: size.height * .06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: size.height * .06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                      ),
                          child: Center(
                            child: Text("Details",style: TextStyle(fontWeight: FontWeight.w500,color: mainColorBook),),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: size.height * .06,
                         decoration: BoxDecoration(
                             color:mainColorBook,
                           borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),
                           topLeft: Radius.circular(25)
                           )
                         ),
                          child: Center(
                            child: Text(
                              "Read",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
