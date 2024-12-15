import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/common/animation/animate_do.dart';
import 'package:mo_7_store/core/common/widgets/custom_linear_button.dart';
import 'package:mo_7_store/core/common/widgets/text_app.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/language/lang_keys.dart';
import 'package:mo_7_store/core/styles/fonts/fontWeight.dart';

class SignUpButton extends StatelessWidget {
  final void Function() onPressed;
  const SignUpButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 600,
      child: CustomLinearButton(
        height: 50.h,
        width: MediaQuery.of(context).size.width,
        onPressed: onPressed,
        child: TextApp(
          text: context.translate(LangKeys.signUp),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontHelperWeight.fontBold,
          ),
        ),
      ),
    );
  }
}
