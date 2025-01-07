import 'package:dio/dio.dart';
import 'package:mo_7_store/core/app/upload_image/model/upload_image_response.dart';
import 'package:mo_7_store/features/auth/data/model/login_response.dart';
import 'package:mo_7_store/features/auth/data/model/user_role_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

const String baseUrl = 'https://api.escuelajs.co';
const String graphql = '/graphql';

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(graphql)
  Future<LoginResponse> login(@Body() Map<String,dynamic> mutation,); 

  @GET('/api/v1/auth/profile')
  Future<UserRoleResponse> userRole();

  @POST('/api/v1/files/upload')
  Future<UploadImageResponse> uploadFile(
    @Body() FormData file,
  );
}