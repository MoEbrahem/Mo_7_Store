import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:mo_7_store/core/common/animation/animate_do.dart';
import 'package:mo_7_store/core/common/toaster/show_toast.dart';
import 'package:mo_7_store/core/common/widgets/custom_linear_button.dart';
import 'package:mo_7_store/core/common/widgets/text_app.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/language/lang_keys.dart';
import 'package:mo_7_store/core/routes/AppRoutes.dart';
import 'package:mo_7_store/core/styles/fonts/fontWeight.dart';
import 'package:mo_7_store/features/auth/presentation/bloc/auth_bloc.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (_) {
            ShowToast.showToastSuccessTop(
              context: context, 
              message: LangKeys.loggedSuccessfully); 
            context.pushNamedAndRemoveUntil(AppRoutes.customerHome);  
          },
          error: (errMessage) => ShowToast.showToastErrorTop(message: errMessage),
        );

      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
          return CustomLinearButton(
            height: 50.h,
            width: MediaQuery.of(context).size.width,
            onPressed: () {},
            child: const CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }, orElse: () {
          return CustomFadeInRight(
            duration: 600,
            child: CustomLinearButton(
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              onPressed: _validateThenDoSignUp(context),
              child: TextApp(
                text: context.translate(LangKeys.signUp),
                theme: context.textStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontHelperWeight.fontBold,
                ),
              ),
            ),
          );
        });
      },
    );
  }

  _validateThenDoSignUp(BuildContext context) {
    final authCubit = context.read<AuthBloc>();
    final imageCubit = context.read<UploadImageCubit>();
    if (!authCubit.formKey.currentState!.validate() ||
        imageCubit.getImageUrl.isEmpty) {
          if(imageCubit.getImageUrl.isEmpty){
            return ShowToast.showToastErrorTop(message: LangKeys.validPickImage);
          }

    } else {
      return authCubit.add(AuthEvent.signUp(imageCubit.getImageUrl));
    }
  }
}
