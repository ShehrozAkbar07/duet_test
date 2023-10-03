import 'package:duettest/Const/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String text;
  dynamic controller;
  String validation_value;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Widget? suffix;

  final int? maxlines;
  final Widget? suffixIcon;
  final bool? enabled;
  final bool isValidation;
  final TextInputType? keyboardType;
  CustomTextField(
      {Key? key,
      this.suffix,
      required this.text,
      this.prefix,
      this.isValidation = true,
      required this.validation_value,
      this.maxlines,
      required this.controller,
      this.suffixIcon,
      this.keyboardType,
      this.prefixIcon,
      this.enabled})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 50,
    //   decoration: BoxDecoration(
    //       border: Border.all(width: 1.5, color: Colors.black),
    //       borderRadius: BorderRadius.circular(8.0),
    //       color: Colors.white,
    //       boxShadow: const [
    //         BoxShadow(
    //             color: Color.fromARGB(255, 203, 192, 192),
    //             blurRadius: 5,
    //             offset: Offset(0, 4)), // no shadow color set, defaults to black
    //         // BoxShadow(color: Colors.white, offset: Offset(0, 0)),
    //         //               BoxShadow(color: Colors.white, offset: Offset(0, 0)),
    //       ]),
    // return Material(
    //   shadowColor: Colors.black,
    //   borderRadius: BorderRadiusDirectional.circular(12.0),
    //   elevation: 4,
    //   color: Colors.white,
    return TextFormField(
      enabled: widget.enabled, //<-- SEE HERE
      controller: widget.controller,
      textAlign: TextAlign.left,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxlines,
      // autofillHints: const [
      //   AutofillHints.username,
      //   AutofillHints.password,
      //   AutofillHints.email,
      //   AutofillHints.telephoneNumber
      // ],
      decoration: InputDecoration(
        suffix: widget.suffix,
        prefix: widget.prefix,
        fillColor: Colors.white,

        contentPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
        // fillColor: const Color(AppColors.fillColor),
        filled: true,

        prefixIcon: widget.prefixIcon,

        // maxLines: maxlines,

        hintText: widget.text,
        hintStyle: const TextStyle(color: Colors.black),
        suffixIcon: widget.suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color(0xffFFFFFF).withOpacity(0.3), width: 2.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: grey, width: 1.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: grey, width: 1.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      validator: widget.isValidation
          ? (value) {
              if (value!.isEmpty) {
                return widget.validation_value;
              }
              return null;
            }
          : null,
      //    ),
    );
  }
}
