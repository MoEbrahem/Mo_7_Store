import 'package:image_picker/image_picker.dart';
import 'package:mo_7_store/core/app/upload_image/data_source/UploadImageDataSource.dart';
import 'package:mo_7_store/core/app/upload_image/model/upload_image_response.dart';
import 'package:mo_7_store/core/services/graphql/api_result.dart';

class UploadImageRepo {
  final UploadImageDataSource _dataSource;

  UploadImageRepo(this._dataSource);
  
  Future<ApiResult<UploadImageResponse>> uploadImage(XFile file) async {
    try{
      final res = await _dataSource.uploadImage(file);
      return ApiResult.success(res);
    }catch(error){
      return const ApiResult.failure("Please, try again we have error");
    }
  }
}