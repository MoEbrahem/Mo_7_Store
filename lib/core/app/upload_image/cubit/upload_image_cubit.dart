import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mo_7_store/core/app/upload_image/repo/uploadImageRepo.dart';
import 'package:mo_7_store/core/utils/image_pick.dart';

part 'upload_image_state.dart';
part 'upload_image_cubit.freezed.dart';

class UploadImageCubit extends Cubit<UploadImageState> {
  UploadImageCubit(this._repo) : super(const UploadImageState.initial());
  final UploadImageRepo _repo;
  String getImageUrl = '';
  Future<void> uploadImage() async {
    final pickimage = await PickImageUtil().pickImage();
    if (pickimage == null) return;

    emit(const UploadImageState.loading());
    final result = await _repo.uploadImage(pickimage);
    result.when(
      success: (file) {
        getImageUrl = file.location ?? '';
        emit(const UploadImageState.success());
      },
      failure: (error) {
        emit(
          UploadImageState.error(errMessage: error),
        );
      },
    );
  }
  void removeImage(){
    getImageUrl = '';
    emit(UploadImageState.removeImage(imageUrl: getImageUrl));
  }
}
