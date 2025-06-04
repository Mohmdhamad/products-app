import 'package:flutter/material.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/home/view/model/product_model.dart';
import 'package:tasks/features/home/view/widgets/app_bar.dart';

import '../../../../core/style/colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(this.productModel, {super.key});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              spacing: 20.0,
              children: [
                Image.network(productModel.image,),
                Text(productModel.name,style: titleStyle(textSize: 20.0),),
                Text(productModel.description,style: titleStyle(),),
                Row(
                  spacing: 7,
                  children: [
                    Text('Price : ${productModel.price}',
                      style: titleStyle(),
                    ),
                    Icon(Icons.star,
                      size: 15.0,
                      color: AppColors.blue,
                    ),
                    Icon(Icons.star,
                      size: 15.0,
                      color: AppColors.blue,
                    ),
                    Icon(Icons.star,
                      size: 15.0,
                      color: AppColors.blue,
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
