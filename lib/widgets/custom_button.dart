import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key, this.onTap, required this.label});
  VoidCallback ? onTap;
   String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: double.infinity,
        height: 45,
        child: Center(
          child: Text(label, style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),),
        ),
      ),
    );
  }
}


