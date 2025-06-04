import 'package:flutter/material.dart';

import '../../../../core/style/text_style.dart';
import '../../../../models/validator.dart';



class DefaultTextForm extends StatelessWidget {
  var controller = TextEditingController();
  DefaultTextForm({super.key, required this.labelText, required this.prefixIcon, required this.hintText, this.validate});
  final String labelText;
  final IconData prefixIcon;
  final String hintText;
  final String? Function(String?)? validate;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      decoration: InputDecoration(
        label: Text(labelText,
          style: titleStyle(),
        ),
        prefixIcon: Icon(prefixIcon),
        suffix: IconButton(
          onPressed: (){
            controller.clear();
          },
          icon: Icon(Icons.delete_forever_outlined),
        ),
        hintText: hintText,
        contentPadding: EdgeInsetsDirectional.symmetric(vertical: 7.0,horizontal: 20.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
      validator: validate,
    );
  }
}
