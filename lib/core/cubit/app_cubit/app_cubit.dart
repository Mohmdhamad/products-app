import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks/core/cubit/app_cubit/app_states.dart';
import 'package:tasks/features/home/view/model/data/product_list.dart';
import 'package:tasks/features/home/view/model/product_model.dart';
import 'package:tasks/features/home/view/widgets/product_builder.dart';


class AppCubit extends Cubit<AppStates>{
  AppCubit():super (InitialState());
 static AppCubit get(context)=>BlocProvider.of(context);
  void getData(){
    emit(LoadingData());
    Future.delayed(Duration(seconds: 3));
    emit(GetDataState(product: productList));
  }
}