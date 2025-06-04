import 'package:flutter/material.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:tasks/features/auth/view/widgets/register_body.dart';
import 'package:tasks/models/validator.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterBody(),
    );
  }
}
