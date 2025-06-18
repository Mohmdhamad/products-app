import 'package:flutter/material.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/auth/view/screen/register_screen.dart';
import 'package:tasks/features/auth/view/widgets/button.dart';
import 'package:tasks/features/auth/view/widgets/text_form.dart';
import 'package:tasks/features/home/view/screen/home_screen.dart';
import 'package:tasks/models/validator.dart';

import '../../../../core/style/colors.dart';
import '../../../../widgets/item_builder.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 20.0,
            children: [
              Text('Login Now',
              style: titleStyle(textSize: 25.0),
              ),
              DefaultTextForm(labelText: 'Email', prefixIcon: Icons.mail_outline_outlined, hintText: 'enter Your email',validate: MyValidators.emailValidator,),
              DefaultTextForm(labelText: 'Password', prefixIcon: Icons.lock, hintText: 'enter your password',validate: MyValidators.passwordValidator,),
              defaultButton(context:context,screen: HomeScreen(),text: 'Login '),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text('Don\'t Have an account !',
                      style: titleStyle(
                          textSize: 18.0
                      ),),
                    Spacer(),
                    TextButton(onPressed: (){
                      navigateTo(context, RegisterScreen());
                    } ,child: Text(
                      'Sign Up now',
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
    );
  }
}
