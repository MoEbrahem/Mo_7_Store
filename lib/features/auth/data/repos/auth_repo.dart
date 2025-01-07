import 'package:mo_7_store/core/services/graphql/api_result.dart';
import 'package:mo_7_store/core/utils/app_strings.dart';
import 'package:mo_7_store/features/auth/data/data_Source/auth_data_source.dart';
import 'package:mo_7_store/features/auth/data/model/login_request.dart';
import 'package:mo_7_store/features/auth/data/model/login_response.dart';
import 'package:mo_7_store/features/auth/data/model/user_role_response.dart';

class AuthRepo {
  const AuthRepo(this._dataSource);
  final AuthDataSource _dataSource;
  
  Future<ApiResult<LoginResponse>> login(LoginRequestBody body)async{
    try {
      final res = await _dataSource.login(body: body);
      return ApiResult.success(res);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
      
    }
  }
  Future<UserRoleResponse> userRole(String token)async{
    final res = await _dataSource.userRole(token);
    return res;
  }
}