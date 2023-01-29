import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget entryField(
    BuildContext context,
    String title,
    TextEditingController controller,
    // not a must required Parameters
    {
      int txtLength,
      // MaxLengthEnforcement maxLengthEnforce = true,
      bool isPassword = false,
      TextInputType keyboardType = TextInputType.text,
      bool hasBorder = true,
      bool hasLabel = false,
      bool hasIcon = false,
      IconData icon,
      Color txtColor,
      Color fill = Colors.transparent,
}
    ){
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: TextField(
      // obscureText: True,
      maxLength: txtLength,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      keyboardType: keyboardType,
      controller: controller,
      obscureText: isPassword,

      style: TextStyle(
        color: txtColor,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        prefixIcon: (hasIcon == true) ? Icon(icon) : null,
       labelText: title,
        labelStyle: TextStyle(
          fontSize: 20,
          color: Colors.black
        ),
        floatingLabelBehavior: (hasLabel == true)?FloatingLabelBehavior.auto
            :FloatingLabelBehavior.never,
        fillColor: fill,
        filled: true,

      ),
    ),
  );
}