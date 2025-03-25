import 'dart:developer';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:karoke_main/presentation/view/login/controllers/controller_login.dart';
import 'package:karoke_main/presentation/view/login/screens/widgets/custom_button.dart';
import 'package:karoke_main/presentation/view/login/screens/widgets/custom_textfield.dart';
import '../../../../mixins/validation_mixin.dart';
import '../../../../utils/appColors/app_colors.dart';
import '../../../../utils/gradient/app_helper_widget.dart';
import '../../../../utils/strings/app_assets.dart';
import '../../../../utils/typography/typography.dart';
import '../../welcome/trial_view.dart';

class RegisterationScreen extends StatefulWidget {

  const RegisterationScreen({super.key});

  @override
  State<RegisterationScreen> createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> with ValidationMixin {

  final SignUpController signUpController = Get.put(SignUpController());
  // int selectedGender = 1;
  // Country? selectedCountry;
  String password = '';

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body:
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(gradient: AppHelperWidgets.bgGradient),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                const SizedBox(height: 40),
                Center(
                  child: Image.asset(
                    AppAssets.appLogo,
                    height: 180,
                    width: 180,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Sign Up Now',
                  style: poppinsBold.copyWith(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: signUpController.fullNameController,
                  radius: 8,
                  hintText: 'Full Name',
                  hintStyle: poppinsRegular.copyWith(fontSize: 12),
                  validator: (value) => nameValidate(value ?? ''),
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: signUpController.emailController,
                  radius: 8,
                  hintText: 'Enter an E-mail',
                  hintStyle: poppinsRegular.copyWith(fontSize: 12),
                  validator: (value) => validateEmail(value ?? ''),
                ),
                const SizedBox(height: 15),
                Text(
                  'Gender:',
                  style: poppinsRegular.copyWith(color: Colors.white, fontSize: 12),
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            signUpController.setGender(1);
                          },
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: signUpController.selectedGender == 1 ? ColorPalette.secondaryAppColor : Colors.grey,
                            child: const CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.transparent,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: ColorPalette.primaryAppColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Male',
                          style: poppinsRegular.copyWith(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(width: 25),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            signUpController.setGender(2);
                          },
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: signUpController.selectedGender == 2 ? ColorPalette.secondaryAppColor : Colors.grey,
                            child: const CircleAvatar(
                              radius: 7,
                              backgroundColor: Colors.transparent,
                              child: CircleAvatar(
                                radius: 6,
                                backgroundColor: ColorPalette.primaryAppColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Female',
                          style: poppinsRegular.copyWith(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 19),
                GestureDetector(
                  onTap: () {
                    showCountryPicker(
                      context: context,
                      showPhoneCode: true, // optional. Shows phone code before the country name.
                      onSelect: (Country country) {
                        log('Select country: ${country.displayName}');
                        setState(() {
                          //controller.setCountry(country);
                        });
                      },
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                           'Select country/region',
                             // : '${controller.selectedCountry!.countryCode} ${controller.selectedCountry!.name}',
                          style: poppinsRegular.copyWith(color: Colors.white, fontSize: 12),
                        ),
                        const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: signUpController.passwordController,
                  radius: 8,
                  hintText: 'Enter a Password',
                  hintStyle: poppinsRegular.copyWith(fontSize: 12),
                  validator: (value) => passwordValidate(value ?? ''),

                ),
                const SizedBox(height: 20),
                CustomElevatedButton(
                  backgroundColor: ColorPalette.secondaryAppColor,
                  title: 'Sign Up',
                  textStyle: poppinsBold.copyWith(fontSize: 12, color: ColorPalette.primaryAppColor),
                  onPressed: () {

                    Navigator.push(context,  MaterialPageRoute(builder: (context) => TrialView(),));
                    if (formKey.currentState!.validate()) {
                      //controller.register();
                      // print(controller.getUserId().toString());
                    }
                    //Navigator.pushNamed(context, TrialView.id);
                  },
                ),
                const SizedBox(height: 8),
                CustomElevatedButton(
                  backgroundColor: ColorPalette.primaryAppColor,
                  outlinedBorderColor: ColorPalette.secondaryAppColor,
                  title: 'Already have account? Log In',
                  textStyle: poppinsBold.copyWith(fontSize: 12, color: Colors.white),
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        )
    );
  }
}

class SocialSignUpButton extends StatelessWidget {
  final String title;
  final String logo;

  const SocialSignUpButton({super.key, required this.title, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(logo, height: 24, width: 24),
          const SizedBox(width: 10),
          Text(
            title,
            style: poppinsBold.copyWith(fontSize: 12, color: ColorPalette.primaryAppColor),
          ),
        ],
      ),
    );
  }
}
