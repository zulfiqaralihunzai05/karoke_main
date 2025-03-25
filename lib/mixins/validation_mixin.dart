import 'package:flutter/services.dart';

mixin ValidationMixin {
  RegExp get allowAlphabetsOnly => RegExp('[a-zA-Z]');

  RegExp get allowNumbersOnly => RegExp(r'[0-9]');

  // String? validateName(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Name is required';
  //   }
  //   return null;
  // }

  String? nameValidate(String? value) {
    const String pattern = '[a-zA-Z]';
    final RegExp regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    } else if (!regExp.hasMatch(value)) {
      return "Name can't contain numbers";
    }
    return null;
  }

  String? phoneValidate(String? value) {
    const String pattern = r'^(?:[+0][1-9])?[0-9]{10}$';
    final RegExp regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  // String? validatePhone(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Please enter contact number';
  //   }
  //   if (value.length < 14) {
  //     return 'Please enter a valid contact number';
  //   }
  //   return null;
  // }

  String? validateFormField(String? value, String message) {
    if (value == null || value.isEmpty) {
      return message;
    }
    return null;
  }

  String? validateConfirmPass(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Please re-enter your password';
    } else if (value != password) {
      return 'Password does not match';
    }
    return null;
  }

  String? validateEmail(String? value) {
    const String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'Please enter an email';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid email address';
    }
    return null;
  }

  String? passwordValidate(String? value) {
    const String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    final RegExp regExp = RegExp(pattern);
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    } else if (!regExp.hasMatch(value)) {
      return 'Password must contain at least 8 characters \n* including at least 1 uppercase letter \n* 1 lowercase letter, \n* 1 number and 1 special character';
    }
    return null;
  }

  FilteringTextInputFormatter get allowAlphabetsOnlyFormatter => FilteringTextInputFormatter.allow(allowAlphabetsOnly);

  FilteringTextInputFormatter get allowNumbersOnlyFormatter => FilteringTextInputFormatter.allow(allowNumbersOnly);

//MaskedInputFormatter get phoneNumberFormatter => MaskedInputFormatter('(###) ###-####');
}
