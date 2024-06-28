import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonWidgets {
  CommonWidgets._();

  static Widget button(
      {required String? title,
      required double width,
      required double height,
      required Color bgColor,
      required Color? iconColor,
      required Color? textColor,
      required double radius,
      required double? fontSize,
      required IconData? iconData,
      required VoidCallback function,
      double? iconSize}) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(radius),
              ),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(bgColor),
        ),
        onPressed: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (iconData != null)
                ? Icon(
                    iconData,
                    color: iconColor,
                    size: iconSize ?? 20.sp,
                  )
                : Container(),
            (title != null)
                ? Text(
                    title,
                    style: TextStyle(color: textColor, fontSize: fontSize),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  static Widget horizontalSpace(double width) {
    return SizedBox(
      width: width,
    );
  }

  static Widget verticalSpace(double height) {
    return SizedBox(
      height: height,
    );
  }
}
