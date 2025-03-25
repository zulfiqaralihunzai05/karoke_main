import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {


  //SignUp Controllers
  TextEditingController fullNameController =  TextEditingController();
  TextEditingController emailController =  TextEditingController();
  TextEditingController passwordController =  TextEditingController();

  int selectedGender = 1;

  void setGender(int value) {
    selectedGender = value;
    update();
  }

}