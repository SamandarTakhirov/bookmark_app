import 'package:flutter/material.dart';

Padding myTextField({
  required bool glass,
  required String prefixIconUrl,
  required String labelText,
  required TextCapitalization textCapitalization,
  required TextInputAction textInputAction,
  Widget? suffixIconUrl,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 5,
    ),
    child: TextField(
      obscureText: glass,
      obscuringCharacter: "•",
      decoration: InputDecoration(
        prefixIcon: Image(
          image: AssetImage("$prefixIconUrl"),
        ),
        labelText: labelText,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFA7B5B7),
          ),
        ),
        suffixIcon: suffixIconUrl,

      ),
      textCapitalization: textCapitalization,
      autofocus: true,
      textInputAction: textInputAction,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: "Raleway",
      ),
    ),
  );
}
