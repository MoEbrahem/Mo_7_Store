import 'package:flutter/material.dart';
import 'package:mo_7_store/core/common/animation/animate_do.dart';
import 'package:mo_7_store/core/services/shared_Pref/pref_Keys.dart';
import 'package:mo_7_store/core/services/shared_Pref/shared_pref.dart';
import 'package:mo_7_store/core/utils/image_pick.dart';

class UserProfileImage extends StatefulWidget {
  const UserProfileImage({super.key});

  @override
  State<UserProfileImage> createState() => _UserProfileImageState();
}

class _UserProfileImageState extends State<UserProfileImage> {
  @override
  Widget build(BuildContext context) {
    String? image = SharedPref().getString(PrefKeys.profileImage);
    return GestureDetector(
      onTap: () {
        PickImageUtil().pickImage();
        setState(() {});
      },
      child: CustomFadeInDown(
        duration: 500,
        child: CircleAvatar(
          radius: 38,
          backgroundImage: image !=null ?
          NetworkImage(image)
          : const AssetImage(
            "assets/images/customer/user.png"
          ),
        ),
      ),
    );
  }
}
