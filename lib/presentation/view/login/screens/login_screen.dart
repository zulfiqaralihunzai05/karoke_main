import 'package:flutter/material.dart';
import 'package:karoke_main/presentation/view/login/screens/registeration_screen.dart';
import 'package:karoke_main/presentation/view/login/screens/widgets/custom_button.dart';
import 'package:karoke_main/presentation/view/login/screens/widgets/custom_textfield.dart';

import '../../../../mixins/validation_mixin.dart';
import '../../../../utils/appColors/app_colors.dart';
import '../../../../utils/gradient/app_helper_widget.dart';
import '../../../../utils/strings/app_assets.dart';
import '../../../../utils/typography/typography.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin{
  bool isPasswordHide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        decoration: BoxDecoration(gradient: AppHelperWidgets.bgGradient),
        child: ListView(
          children: [
            const SizedBox(height: 60),
            Center(
              child: Image.asset(
                AppAssets.appLogo,
                height: 180,
                width: 180,
              ),
            ),
            const SizedBox(height: 30),
            Text(

              'Log In Now',

              style: poppinsBold.copyWith(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(height: 16),
            CustomTextField(
              radius: 8,
              hintText: 'E-mail',
              hintStyle: poppinsRegular.copyWith(fontSize: 12),
              validator: (value) => validateEmail(value ?? ''),
            ),
            const SizedBox(height: 16),
            CustomTextField(
              radius: 8,
              maxLines: 1,
              hintText: 'Password',
              isSuffixIcon: true,
              hintStyle: poppinsRegular.copyWith(fontSize: 12),
              validator: (value) => validateFormField(value ?? '', 'Enter your password'),
              suffixIcon: isPasswordHide ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              onSuffixIconPressed: () => setState(() => isPasswordHide = !isPasswordHide),
              isObscureText: isPasswordHide,
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Password?',
                style: poppinsRegular.copyWith(
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 16),
            CustomElevatedButton(
              backgroundColor: ColorPalette.secondaryAppColor,
              title: 'Log In',
              textStyle: poppinsBold.copyWith(fontSize: 12, color: ColorPalette.primaryAppColor),
              onPressed: () {

                //Navigator.pushNamed(context, DashboardView.id);
              },
            ),
            const SizedBox(height: 8),
            CustomElevatedButton(
              backgroundColor: ColorPalette.primaryAppColor,
              outlinedBorderColor: ColorPalette.secondaryAppColor,
              title: 'Create new account? Sign Up',
              textStyle: poppinsBold.copyWith(fontSize: 12, color: Colors.white),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterationScreen(),));
              },
            ),

          ],
        ),
      ),
    );
  }
}


