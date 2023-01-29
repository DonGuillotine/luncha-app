import 'package:flutter/material.dart';

Widget entryField(
  BuildContext context,
  String title,
  TextEditingController controller, {
  bool isPassword = false,
  TextInputType keyboardType = TextInputType.text,
  bool hasLabel = false,
  bool hasIcon = false,
  IconData icon,
  Color txtColor,
  Color fill = Colors.transparent,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: TextField(
      keyboardType: keyboardType,
      controller: controller,
      obscureText: isPassword,
      style: TextStyle(
        color: txtColor,
      ),
      decoration: InputDecoration(
        prefixIcon: (hasIcon == true) ? Icon(icon) : null,
        labelText: title,
        labelStyle: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        floatingLabelBehavior: (hasLabel == true)
            ? FloatingLabelBehavior.auto
            : FloatingLabelBehavior.never,
        fillColor: fill,
        filled: true,
      ),
    ),
  );
}
