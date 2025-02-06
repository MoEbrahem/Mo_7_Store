import 'package:mo_7_store/features/auth/data/model/login_request.dart';
import 'package:mo_7_store/features/auth/data/model/sign_Up_request_body.dart';

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
        'password': body.password,
      }
    };
  }

  Map<String, dynamic> signUpMapQuery({required SignUpRequestBody body}) {
    return {
      'query': r'''
        mutation signup($name:String!,$email: String!, $password: String!,$avatar:String!){
            addUser(
              data: {
                name: $name
                email: $email
                password: $password
                avatar: $avatar
                role: customer
              }
            ) {
              id
              email
            }
          }
          ''',
      'variables': {
        'name': body.name,
        'email': body.email,
        'password': body.password,
        'avatar': body.avatar,
      }
    };
  }
}
