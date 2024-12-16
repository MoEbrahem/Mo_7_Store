import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/common/animation/animate_do.dart';
import 'package:mo_7_store/core/common/widgets/text_app.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/language/lang_keys.dart';
import 'package:mo_7_store/core/routes/AppRoutes.dart';
import 'package:mo_7_store/core/styles/fonts/fontWeight.dart';
import 'package:mo_7_store/features/auth/presentation/widgets/DarkAndLangButtons.dart';
import 'package:mo_7_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:mo_7_store/features/auth/presentation/widgets/sign_up/sign_up_button.dart';
import 'package:mo_7_store/features/auth/presentation/widgets/sign_up/text_form_signUp.dart';
import 'package:mo_7_store/features/auth/presentation/widgets/sign_up/user_Image.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.w,left: 20.w, top: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Language and Theme Mode
            const DarkAndLangButtons(),
            SizedBox(
              height: 30.h,
            ),
            // Title and Description
            AuthTitleInfo(
              title: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),
            SizedBox(
              height: 10.h,
            ),
            const UserProfileImage(),
            SizedBox(
              height: 20.h,
            ),
            // Signup Text Form Fields
            const SignUpTextForm(),
            SizedBox(
              height: 20.h,
            ),
            SignUpButton(
              onPressed: () {},
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomFadeInDown(
              duration: 400,
              child: InkWell(
                onTap: () {
                  context.pushReplacementNamed(AppRoutes.login);
                },
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
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
