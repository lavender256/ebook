import 'package:flutter/material.dart';

class Book{
  final String imageUrl;
  final String name;
  final String writer;
  final String rate;

  Book({this.imageUrl, this.name, this.writer,this.rate});
}

class Chapter{
  final String id;
  final String chapterName;

  Chapter({this.id, this.chapterName});
}