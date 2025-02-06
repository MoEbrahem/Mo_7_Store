import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mo_7_store/core/app/upload_image/model/upload_image_response.dart';
import 'package:mo_7_store/core/services/graphql/api_service.dart';

class UploadImageDataSource {
  final ApiService _api;
  UploadImageDataSource(this._api);
  Future<UploadImageResponse> uploadImage(XFile file) async {
    final formdata = FormData();
    formdata.files.add(
      MapEntry(
        "file",
        await MultipartFile.fromFile(file.path),
      ),
    );
    final response = await _api.uploadFile(formdata);
    return response;
  }
}
