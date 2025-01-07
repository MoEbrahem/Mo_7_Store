import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mo_7_store/core/services/shared_Pref/pref_Keys.dart';
import 'package:mo_7_store/core/services/shared_Pref/shared_pref.dart';
import 'package:mo_7_store/features/auth/data/model/login_request.dart';
import 'package:mo_7_store/features/auth/data/repos/auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepo) : super(const _InitialState()) {
    on<_LoginEvent>(_login);
  }
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final AuthRepo _authRepo;
  final formKey=GlobalKey<FormState>();
  

  FutureOr<void> _login(_LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _authRepo.login(
      LoginRequestBody(
          email: emailController.text.trim(),
          password: passwordController.text),
    );

    result.when(
      success: (loginData)async {
        final token = loginData.data.model.accessToken??'';
        // save token to shared preference
          SharedPref().setString(PrefKeys.accessToken,token);

        final userrole = await _authRepo.userRole(token);
        // user id
        SharedPref().setInt(PrefKeys.userId,userrole.id ?? 0);
        // user role
        SharedPref().setString(PrefKeys.userRole,userrole.userRole ?? '');
        emit(AuthState.success( userrole: userrole.userRole??''));
      },
      failure: (error) {
        emit(
          AuthState.error(errMessage: error),
        );
      },
    );
  }
}
