// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final IconData icon;
  final String placeholder;
  final TextEditingController textControler;
  final TextInputType keyboardType;
  final bool isPassword;

  const CustomInputField({
    Key? key,
    required this.icon,
    required this.placeholder,
    required this.textControler,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 5,
        left: 5,
        bottom: 5,
        right: 20,
      ),
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, 5),
            blurRadius: 5,
          ),
        ],
      ),
      child: TextField(
        controller: this.textControler,
        keyboardType: this.keyboardType,
        obscureText: this.isPassword,
        autocorrect: false,
        decoration: InputDecoration(
          prefixIcon: Icon(this.icon),
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: this.placeholder,
        ),
      ),
    );
  }
}
