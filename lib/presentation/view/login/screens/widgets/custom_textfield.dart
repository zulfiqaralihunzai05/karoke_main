import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../utils/appColors/app_colors.dart';
import '../../../../../utils/typography/typography.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? initialValue;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final IconData? suffixIcon;
  final Icon? prefixIcon;
  final Function? onPrefixIconPressed;
  final Function? onSuffixIconPressed;
  final bool isObscureText;
  final bool readOnly;
  final Color? fillColor;
  final bool showErrorMessage;
  final String suffixText;
  final Function()? onTap;
  final TextInputType keyBoardType;
  final Function(String?)? validator;
  final double verticalMargin;
  final double horizontalMargin;
  final Color? outlineColor;
  final TextAlign textAlign;
  final double radius;
  final bool isSuffixIcon;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final bool isEnable;
  final int? maxLines;
  final FocusNode? focusNode;

  const CustomTextField(
      {Key? key,
        this.hintText,
        this.initialValue,
        this.isEnable = true,
        this.isSuffixIcon = false,
        this.hintStyle,
        this.inputTextStyle,
        this.suffixIcon,
        this.prefixIcon,
        this.onSuffixIconPressed,
        this.onPrefixIconPressed,
        this.outlineColor,
        this.textAlign = TextAlign.start,
        this.isObscureText = false,
        this.readOnly = false,
        this.showErrorMessage = true,
        this.horizontalMargin = 0,
        this.verticalMargin = 0,
        this.suffixText = '',
        this.validator,
        this.onTap,
        this.radius = 16,
        this.keyBoardType = TextInputType.text,
        this.inputFormatters = const [],
        this.textInputAction = TextInputAction.next,
        this.fillColor,
        this.controller,
        this.maxLines,
        this.focusNode,
        this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: verticalMargin, horizontal: horizontalMargin),
      child: TextFormField(
        initialValue: initialValue,
        enabled: isEnable,
        keyboardType: keyBoardType,
        obscuringCharacter: '●',
        validator: (value) => validator!(value),
        scrollPhysics: const BouncingScrollPhysics(),
        style: inputTextStyle ?? poppinsRegular,
        obscureText: isObscureText,
        onChanged: onChanged,
        readOnly: readOnly,
        onTap: onTap,
        inputFormatters: inputFormatters,
        textInputAction: textInputAction,
        textAlign: textAlign,
        controller: controller,
        maxLines: maxLines,
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: hintText,
          errorStyle: !showErrorMessage ? const TextStyle(height: 0) : null,
          hintStyle: hintStyle ?? poppinsRegular.copyWith(color: ColorPalette.baseLight20),
          suffixText: suffixText,
          suffixIcon: isSuffixIcon
              ? IconButton(
            onPressed: () {
              if (onSuffixIconPressed != null) onSuffixIconPressed!();
            },
            icon: Icon(suffixIcon, color: ColorPalette.lightWhite),
          )
              : null,
          prefixIcon: prefixIcon,
          filled: true,
          isDense: true,
          fillColor: fillColor ?? Colors.transparent,
          errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(radius), borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(radius), borderSide: const BorderSide(color: Colors.red)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius), borderSide: BorderSide(color: outlineColor ?? ColorPalette.baseLight60)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius), borderSide: BorderSide(color: outlineColor ?? ColorPalette.baseLight60)),
        ),
      ),
    );
  }
}

class PhoneTextField extends StatefulWidget {
  final Function(String)? onChanged;
  final Color? outlineColor;
  final TextEditingController? controller;
  final GlobalKey<FormState>? formKey;

  const PhoneTextField({Key? key, this.onChanged, this.outlineColor, this.controller, this.formKey}) : super(key: key);

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.grey.withOpacity(0.2)),
      child: Row(
        children: [
          Center(
            child: Row(
              children: [
                CountryCodePicker(
                  initialSelection: 'AE',
                  //onChanged: (code) => authController.updateCountryCode(code.dialCode!),
                  padding: const EdgeInsets.all(0),
                  textStyle: poppinsSemiBold.copyWith(fontSize: 18, color: Colors.black),
                ),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.black,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                )
              ],
            ),
          ),
          Expanded(
            child: Form(
              key: widget.formKey,
              child: TextFormField(
                controller: widget.controller,
                style: poppinsSemiBold.copyWith(fontSize: 18, color: Colors.black),
                onChanged: widget.onChanged,
                //inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(9)],
                //validator: (value) => ValidationService().validateMobile(value!),
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  errorStyle: const TextStyle(height: 0),
                  hintStyle: poppinsSemiBold.copyWith(fontSize: 18, color: Colors.black),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
