import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/common/animation/animate_do.dart';
import 'package:mo_7_store/core/common/widgets/custom_text_field.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/language/lang_keys.dart';
import 'package:mo_7_store/core/utils/app_regex.dart';
import 'package:mo_7_store/features/auth/presentation/bloc/auth_bloc.dart';

class SignUpTextForm extends StatefulWidget {
  const SignUpTextForm({super.key});

  @override
  State<SignUpTextForm> createState() => _SignUpTextFormState();
}

class _SignUpTextFormState extends State<SignUpTextForm> {
  bool showPassword = true;
  late AuthBloc authBloc;
  @override
  void initState() {
    authBloc = context.read<AuthBloc>();
    super.initState();
    
  }
  @override
  void dispose() {
    authBloc.nameController.dispose();
    authBloc.passwordController.dispose();
    authBloc.emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key:authBloc.formKey,
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: authBloc.nameController,
              keyboardType: TextInputType.name,
              hintText: context.translate(LangKeys.fullName),
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 3) {
                  return context.translate(LangKeys.validName);
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: authBloc.emailController,
              keyboardType: TextInputType.emailAddress,
              hintText: context.translate(LangKeys.email),
              validator: (value) {
                if (value == null ||
                    !AppRegex.isEmailValid(authBloc.emailController.text) ||
                    value.isEmpty) {
                  return context.translate(LangKeys.validEmail);
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: authBloc.passwordController,
              keyboardType: TextInputType.visiblePassword,
              hintText: context.translate(LangKeys.password),
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return context.translate(LangKeys.validPasswrod);
                }
                return null;
              },
              suffixIcon: IconButton(
                onPressed: () {
                  setState(
                    () {
                      showPassword = !showPassword;
                    },
                  );
                },
                icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off),
                color: context.color.textColor,
              ),
              obscureText: showPassword,
            ),
          ),
        ],
      ),
    );
  }
}
