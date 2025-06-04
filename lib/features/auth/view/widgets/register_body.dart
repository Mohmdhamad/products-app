import 'package:flutter/material.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/features/home/view/screen/home_screen.dart';
import 'package:tasks/features/login/view/screen/login_screen.dart';
import 'package:tasks/features/auth/view/widgets/button.dart';
import 'package:tasks/features/auth/view/widgets/text_form.dart';
import 'package:tasks/features/home/view/model/data/product_list.dart';
import 'package:tasks/features/home/view/widgets/app_bar.dart';
import 'package:tasks/features/home/view/widgets/product_builder.dart';
import 'package:tasks/models/colors_model.dart';
import 'package:tasks/models/validator.dart';

import '../../../../core/style/text_style.dart';
import '../../../../widgets/item_builder.dart';



class RegisterBody extends StatelessWidget {
  RegisterBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              spacing: 20.0,
              children: [
                SizedBox(height: 50.0,),
                Text('Register Now ',
                style: titleStyle(textSize: 25.0),),
                DefaultTextForm(labelText: 'Name', prefixIcon: Icons.person, hintText: 'Enter Your Name',validate: MyValidators.displayNamevalidator,),
                DefaultTextForm(labelText: 'Email', prefixIcon: Icons.mail_outline_outlined, hintText: 'Enter Your Email address',validate: MyValidators.emailValidator,),
                DefaultTextForm(labelText: 'Phone', prefixIcon: Icons.phone_android_rounded, hintText: 'Enter your phone number',validate: MyValidators.phoneValidator,),
                DefaultTextForm(labelText: 'National Id', prefixIcon: Icons.perm_identity, hintText: 'Enter your National Id',validate: MyValidators.nationalIdValidator,),
                DefaultTextForm(labelText: 'Password', prefixIcon: Icons.lock, hintText: 'Enter your password',validate: MyValidators.passwordValidator,),
                DefaultTextForm(labelText: 'Token', prefixIcon: Icons.edit, hintText: 'Your Token',validate:MyValidators.tokenValidator ,),
                defaultButton(context: context,screen: HomeScreen(),text: 'Sign Up'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text('Have an account ! ',
                      style: titleStyle(
                        textSize: 18.0
                      ),),
                      Spacer(),
                      TextButton(onPressed: (){
                        navigateTo(context, LoginScreen());
                      } ,child: Text(
                        'Login now',
                      style: titleStyle(color: AppColors.blue,
                        textSize: 19.0
                      ),
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

