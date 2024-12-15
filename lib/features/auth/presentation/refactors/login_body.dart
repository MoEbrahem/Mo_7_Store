import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/common/animation/animate_do.dart';
import 'package:mo_7_store/core/common/widgets/text_app.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/language/lang_keys.dart';
import 'package:mo_7_store/core/styles/fonts/fontWeight.dart';
import 'package:mo_7_store/features/auth/presentation/widgets/DarkAndLangButtons.dart';
import 'package:mo_7_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:mo_7_store/features/auth/presentation/widgets/login/button_text.dart';
import 'package:mo_7_store/features/auth/presentation/widgets/login/text_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Language and Theme Mode
            const DarkAndLangButtons(),
            SizedBox(
              height: 50.h,
            ),
            // Title and Description
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            SizedBox(
              height: 30.h,
            ),
            // Login Text Form Fields
            const LoginTextForm(),
            SizedBox(
              height: 30.h,
            ),
            LoginButton(
              onPressed: () {},
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomFadeInDown(
              duration: 400,
              child: InkWell(
                onTap: (){},
                child: TextApp(
                  text: context.translate(LangKeys.createAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontHelperWeight.fontBold,
                    color: context.color.bluePinkLight,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
