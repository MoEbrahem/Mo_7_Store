import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mo_7_store/core/services/graphql/api_service.dart';
import 'package:mo_7_store/core/services/graphql/graphql_queries/auth/auth_queries.dart';
import 'package:mo_7_store/features/auth/data/model/login_request.dart';
import 'package:mo_7_store/features/auth/data/model/login_response.dart';
import 'package:mo_7_store/features/auth/data/model/user_role_response.dart';

class AuthDataSource {
  AuthDataSource(this._graphql);
  final ApiService _graphql;

  Future<LoginResponse> login({required LoginRequestBody body}) async {
    final response = await _graphql.login(
      AuthQueries().loginMapQuery(body: body),
    );
    return response;
  }

  Future <UserRoleResponse> userRole(String token)async{
    final dio =Dio();
    dio.options.headers['Authorization'] = "Bearer $token";
    final client = ApiService(dio);
    final response = await client.userRole();
    debugPrint("User Role => ${response.userRole}");
    return response;
  }

}
