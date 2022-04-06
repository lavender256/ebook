import 'package:book/models/book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ChapterCard extends StatelessWidget {

  final Chapter chapter;


  ChapterCard({this.chapter});

  @override
  Widget build(BuildContext context) {  var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: size.height*.02),
      padding: EdgeInsets.symmetric(horizontal: size.width*.03),
      width: size.width,
      height: size.height*.1,
      decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(25)
        ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Chapter  ${chapter.id}",style: TextStyle(
            fontWeight: FontWeight.w500
          ),),
      //    SizedBox(width: size.width*.15,),
          Text(chapter.chapterName,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: size.width*.05
          ),),
          IconButton(icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: size.width*.05,), onPressed: null)
        ],
      ),

    );
  }
}
