import 'package:flutter/material.dart';
import 'package:tasks/features/home/view/model/product_model.dart';
import 'package:tasks/features/home/view/screen/details_screen.dart';
import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class ProductBuilder extends StatelessWidget {
  const ProductBuilder(this.productModel, {super.key});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.pushNav(DetailsScreen(productModel));
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productModel.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: titleStyle(),),
              Expanded(
                child: Image(image: NetworkImage(productModel.image),
                  fit: BoxFit.cover,
                ),
              ),
              Text(productModel.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: titleStyle(),
              ),
              Row(
                spacing: 5,
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


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
extension Nav on BuildContext{
  pushNav(Widget widget){
    Navigator.push(this, MaterialPageRoute(builder: (context)=>widget));
  }
}