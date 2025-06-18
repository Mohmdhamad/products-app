import 'package:tasks/features/home/view/model/data/product_list.dart';
import 'package:tasks/features/home/view/model/product_model.dart';

abstract class AppStates{}
class InitialState extends AppStates{}
class LoadingData extends AppStates{}
class GetDataState extends AppStates{
   List<ProductModel> product;
   GetDataState({required this.product});
}