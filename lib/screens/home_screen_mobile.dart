import 'package:book/data/data.dart';
import 'package:book/models/book.dart';
import 'package:book/screens/read_screen_mobile.dart';
import 'package:book/widget/best_day_card.dart';
import 'package:book/widget/book_card.dart';
import 'package:book/widget/continue_reading_card.dart';
import 'package:book/widget/my_rich_text.dart';
import 'package:flutter/material.dart';

import '../colors.dart';


class HomeScreenMobile extends StatefulWidget {
  @override
  _HomeScreenMobileState createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: scaffoldColorBook,
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.symmetric(horizontal: size.width * .05),
        child: SingleChildScrollView(physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .05,
              ),
              MyRichText(
                rich1: "What are you\nreading ",
                rich2: "today?",
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                  width: size.width,
                  height: size.height * .4,
                  child: ListView.builder(
                    itemCount: bookList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      Book book = bookList[index];
                      return GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ReadScreenMobile(book: book,))),
                        child: BookCard(book: book),
                      );
                    },
                  )),
              SizedBox(
                height: size.height * .04,
              ),
              MyRichText(
                rich1: "Best of the ",
                rich2: "day",
              ),
              SizedBox(
                height: size.height * .01,
              ),
              BestDayCard(),
              SizedBox(
                height: size.height * .01,
              ),
              MyRichText(
                rich1: "Continue ",
                rich2: "reading",
              ),
              SizedBox(
                height: size.height * .01,
              ),
              ContinueReadingCard(),
              SizedBox(
                height: size.height * .01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
