import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/common/animation/animate_do.dart';
import 'package:mo_7_store/core/common/widgets/custom_text_field.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/language/lang_keys.dart';
import 'package:mo_7_store/core/utils/app_regex.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    
    return Form(
      /// formKey
      child: Column(
        
        children: [
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.emailAddress,
              hintText: context.translate(LangKeys.email),
              validator: (value) {
                if ( value==null || !AppRegex.isEmailValid(value) || value.isEmpty ) {
                  return context.translate(LangKeys.validEmail);
                }
                return null;
              },
              ),
          ),
          SizedBox(height: 25.h,) ,
          CustomFadeInRight(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.visiblePassword,
              hintText: context.translate(LangKeys.password),
              validator: (value) {
                if ( value==null || value.isEmpty || value.length < 6) {
                  return context.translate(LangKeys.validPasswrod);
                }
                return null;
              },
              suffixIcon: IconButton(
                onPressed: (){
                  setState(() {
                    showPassword =!showPassword;
                  });
                },
                icon: Icon(showPassword ? Icons.visibility: Icons.visibility_off),color: context.color.textColor ,),
              obscureText: showPassword,
              ),
          ),           
        ],
    ),);
  }
}