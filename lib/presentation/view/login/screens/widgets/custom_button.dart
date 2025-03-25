import 'package:flutter/material.dart';

import '../../../../../utils/appColors/app_colors.dart';
import '../../../../../utils/typography/typography.dart';
import 'app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  final String? title;
  final Function() onPressed;
  final Color? color;
  final Color? backgroundColor;
  final Color? textColor;
  final double verticalMargin;
  final double horizontalMargin;
  final double? height;
  final FontWeight? fontWeight;
  final double radius;
  final TextStyle? textStyle;
  final double? width;
  final bool isBoxShadow;
  final Icon? icon;
  final bool isTitle;
  final String? assetIcon;
  final bool isTextWithIcon;
  final bool isAssetIcon;
  final Color? outlinedBorderColor;

  const CustomElevatedButton({
    Key? key,
    this.radius = 8,
    this.textStyle,
    this.isTitle = true,
    this.title = '',
    this.isTextWithIcon = false,
    this.isAssetIcon = false,
    this.icon = const Icon(Icons.arrow_forward_ios),
    required this.onPressed,
    this.isBoxShadow = false,
    this.assetIcon,
    this.fontWeight = FontWeight.w400,
    this.color = const Color(0xffC8A726),
    this.verticalMargin = 0,
    this.horizontalMargin = 0,
    this.height = 50,
    this.textColor = Colors.white,
    this.width,
    this.backgroundColor,
    this.outlinedBorderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height,
      decoration: BoxDecoration(boxShadow: isBoxShadow ? [AppStyles.elevatedBtnShadow] : null),
      margin: EdgeInsets.symmetric(vertical: verticalMargin, horizontal: horizontalMargin),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: outlinedBorderColor != null ? BorderSide(color: outlinedBorderColor!, width: 1) : BorderSide.none,
          backgroundColor: backgroundColor ?? ColorPalette.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isTitle
                ? Text(title!, style: textStyle ?? poppinsMedium)
                : isAssetIcon
                    ? Image.asset(assetIcon!, height: 20, width: 20)
                    : icon!,
            isTextWithIcon
                ? Row(
                    children: [
                      const SizedBox(width: 5),
                      isTextWithIcon
                          ? Text(title!, style: textStyle ?? poppinsRegular)
                          : isAssetIcon
                              ? Image.asset(assetIcon!, height: 20, width: 20)
                              : icon!
                    ],
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
