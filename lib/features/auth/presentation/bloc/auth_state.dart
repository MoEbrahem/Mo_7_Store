part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _InitialState;
  const factory AuthState.loading() = _LoadingState;
  const factory AuthState.success({required String userrole}) = _SuccessState;
  const factory AuthState.error({required String errMessage}) = _ErrorState;
}
