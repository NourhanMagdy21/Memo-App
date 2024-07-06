import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({super.key, this.onChanged,  this.hintText, this.obscureText= false});
 Function(String)? onChanged;
   String? hintText;
   bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText! ,
      validator: (data){
        if(data!.isEmpty){
          return 'Field is required';

        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white))),
    );
  }
}
