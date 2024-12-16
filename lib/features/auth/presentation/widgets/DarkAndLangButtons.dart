// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/app/cubit/app_cubit.dart';
import 'package:mo_7_store/core/common/animation/animate_do.dart';
import 'package:mo_7_store/core/common/widgets/custom_linear_button.dart';
import 'package:mo_7_store/core/common/widgets/text_app.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/language/app_localizations.dart';
import 'package:mo_7_store/core/language/lang_keys.dart';
import 'package:mo_7_store/core/styles/fonts/fontWeight.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                onPressed: cubit.changeThemeMode,
                child: Icon(
                  cubit.isDark
                      ? Icons.dark_mode_rounded
                      : Icons.light_mode_outlined,
                  color: cubit.isDark? Colors.black : Colors.white,
                ),
              ),
            );
          },
        ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            height: 44.h,
            width: 100.w,
            onPressed: () {
              if (AppLocalizations.of(context)!.isEnLocale) {
                cubit.toArabic();
              }else{
                cubit.toEnglish();
              }
            },
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle.copyWith(
                  fontWeight: FontHelperWeight.fontBold, fontSize: 16.sp),
            ),
          ),
        )
      ],
    );
  }
}
