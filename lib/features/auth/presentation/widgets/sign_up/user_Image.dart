import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:mo_7_store/core/common/animation/animate_do.dart';
import 'package:mo_7_store/core/common/toaster/show_toast.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/language/lang_keys.dart';
import 'package:mo_7_store/core/styles/images/app_images.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    String? imageUploaded = context.read<UploadImageCubit>().getImageUrl;
    return CustomFadeInDown(
        duration: 500,
        child: BlocConsumer<UploadImageCubit, UploadImageState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                ShowToast.showToastSuccessTop(
                  context: context, 
                  message: context.translate(LangKeys.imageUploaded),);
              },
              removeImage: (imageUrl) {
                ShowToast.showToastSuccessTop(context: context, message: context.translate(LangKeys.imageRemoved),);
              },
              error: (errMessage) {
                ShowToast.showToastErrorTop(message: errMessage);
              },
              );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () {
              return CircleAvatar(
                radius: 38,
                backgroundImage: const AssetImage(
                  ImageAssets.userAvatar,
                ),
                child: Center(
                  child: CircularProgressIndicator(
                    color: context.color.mainColor,
                  ),
                ),
              );
            }, orElse: () {
              return CircleAvatar(
                radius: 38,
                backgroundColor: Colors.grey.withOpacity(0.1),
                backgroundImage: imageUploaded.isNotEmpty
                    ? NetworkImage(imageUploaded)
                    : const AssetImage("assets/images/customer/user.png"),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: imageUploaded.isNotEmpty ? Colors.transparent : Colors.black.withOpacity(0.4),
                      ),
                    ),
                    imageUploaded.isNotEmpty
                        ? Positioned(
                            top: -15,
                            right: -15,
                            child: IconButton(
                              onPressed: () {
                                context.read<UploadImageCubit>().removeImage();
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                    imageUploaded.isEmpty
                        ? IconButton(
                            onPressed: () {
                              context.read<UploadImageCubit>().uploadImage();
                            },
                            icon: const Icon(
                              Icons.add_a_photo,
                              color: Colors.white,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              );
            });
          },
        ));
  }
}

// onTap: () {
//         PickImageUtil().pickImage();
//         setState(() {});
//       },