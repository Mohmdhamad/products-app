import 'package:flutter/material.dart';
import 'package:tasks/core/cubit/app_cubit/app_cubit.dart';
import 'package:tasks/core/cubit/app_cubit/app_states.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/features/home/view/model/data/product_list.dart';
import 'package:tasks/features/home/view/widgets/app_bar.dart';
import 'package:tasks/features/home/view/widgets/product_builder.dart';
import 'package:tasks/models/colors_model.dart';

import '../../../../core/style/text_style.dart';
import '../../../../widgets/item_builder.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeBody extends StatelessWidget {

  HomeBody({super.key});
  bool isColored = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>AppCubit()..getData(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context,state){
          AppCubit cubit = AppCubit.get(context);
          if(state is LoadingData){
            return Center(child: CircularProgressIndicator());
          }else if(state is GetDataState) {
            return Scaffold(
              appBar: appBarHome(),
              body: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                    childAspectRatio: .85,
                  ),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(20.0),
                  itemCount: state.product.length,
                  itemBuilder: (context, index) {
                    return ProductBuilder(state.product[index]);
                  }
              ),
            );
          }else{
            return Container();
          }

          },
      ),
    );

  }
}

