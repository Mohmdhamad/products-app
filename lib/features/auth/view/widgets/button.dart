import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/home/view/screen/home_screen.dart';
import 'package:tasks/widgets/item_builder.dart';

Widget defaultButton(context)=>SizedBox(
  width: double.infinity,
  child: ElevatedButton(onPressed: (){
    navigateAndFinish(context, HomeScreen());
  },
    style: ButtonStyle(
      backgroundColor:WidgetStatePropertyAll(AppColors.lightBlue),
    ),
    child: Text('Sign Up',
  style: titleStyle( color: AppColors.white,
  textSize: 20.0),
  ),),
);