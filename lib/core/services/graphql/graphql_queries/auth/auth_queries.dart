import 'package:mo_7_store/features/auth/data/model/login_request.dart';

class AuthQueries {
  const AuthQueries._();

  static const AuthQueries _instance = AuthQueries._();

  factory AuthQueries() {
    return _instance;
  }

  Map<String, dynamic> loginMapQuery({required LoginRequestBody body}) {
    return {
      'query': r'''
          mutation Login($email: String!, $password: String!) {
            login(email: $email, password: $password) {
              access_token
              refresh_token
            }
          }
          ''',
        'variables': {
          'email': body.email,
          'password':body.password,
        }
    };
  }
}
