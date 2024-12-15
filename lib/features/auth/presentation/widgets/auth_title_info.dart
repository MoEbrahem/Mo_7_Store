import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/common/animation/animate_do.dart';
import 'package:mo_7_store/core/common/widgets/text_app.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/styles/fonts/fontWeight.dart';

class AuthTitleInfo extends StatelessWidget {
  final String title;
  final String description;
  const AuthTitleInfo(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          TextApp(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 24.sp,
              fontWeight: FontHelperWeight.fontBold,
              color: context.color.textColor,
            ),
          ),
          SizedBox(height: 10.h),
          TextApp(
            text: description,
            textAlign: TextAlign.center,
            theme: context.textStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontHelperWeight.fontMedium,
              color: context.color.textColor,
              
            ),
          ),
        ],
      ),
    );
  }
}
