import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/features/home/view/model/data/product_list.dart';
import 'package:tasks/features/home/view/widgets/app_bar.dart';
import 'package:tasks/features/home/view/widgets/product_builder.dart';
import 'package:tasks/models/colors_model.dart';

import '../../../../core/style/text_style.dart';
import '../../../../widgets/item_builder.dart';



class HomeBody extends StatelessWidget {

  HomeBody({super.key});
  bool isColored = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: .85,
        ),
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        itemCount: productList.length,
        itemBuilder:(context,index) {
          return ProductBuilder(productList[index]);
        }
      ),
    );

  }
}

