import 'package:flutter/material.dart';
import 'package:hospital_booking/utils/constants/colors.dart';

class TTextFormFieldTheme{
  TTextFormFieldTheme._();

/// Customizable Light TextFormField Theme
 static InputDecorationTheme lightTextFormFieldTheme=InputDecorationTheme(
   errorMaxLines: 3,
   prefixIconColor: Colors.grey,
   suffixIconColor: Colors.grey,
   fillColor:TColors.white,
   filled: true,
   labelStyle: const TextStyle().copyWith(fontSize: 14.0,color: Colors.black),
   hintStyle: const TextStyle().copyWith(fontSize: 14.0,color: Colors.black),
   errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
   floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
   border: const OutlineInputBorder().copyWith(
     borderRadius: BorderRadius.circular(14.0),
     borderSide: const BorderSide(width: 0,color: Colors.grey,),
   ),
   enabledBorder: const OutlineInputBorder().copyWith(
     borderRadius: BorderRadius.circular(14.0),
     borderSide: const BorderSide(width: 0,color: Colors.grey,),
   ),
   focusedBorder: const OutlineInputBorder().copyWith(
     borderRadius: BorderRadius.circular(14.0),
     borderSide: const BorderSide(width: 0,color: Colors.black12,),
   ),
   errorBorder: const OutlineInputBorder().copyWith(
     borderRadius: BorderRadius.circular(14.0),
     borderSide: const BorderSide(width: 0,color: Colors.red,),
   ),
   focusedErrorBorder: const OutlineInputBorder().copyWith(
     borderRadius: BorderRadius.circular(14.0),
     borderSide: const BorderSide(width: 0,color: Colors.orange,),
   ),
 );

  /// Customizable Dark TextFormField Theme
  static InputDecorationTheme darkTextFormFieldTheme=InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    fillColor:TColors.white,
    filled: true,
    labelStyle: const TextStyle().copyWith(fontSize: 14.0,color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14.0,color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1,color: Colors.grey,),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1,color: Colors.grey,),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1,color: Colors.white ,),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1,color: Colors.red,),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: const BorderSide(width: 1,color: Colors.orange,),
    ),
  );
}