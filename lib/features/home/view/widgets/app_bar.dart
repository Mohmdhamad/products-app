import 'package:flutter/material.dart';
import '../../../../core/style/app_text.dart';
import '../../../../core/style/text_style.dart';

AppBar appBarHome(){
  return AppBar(
    title: Text(
      'Product',
    style: titleStyle(textSize: 20.0),
    ),
    centerTitle: true,
  );
}