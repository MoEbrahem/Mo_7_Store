import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mo_7_store/core/app/di/getit.dart';
import 'package:mo_7_store/core/services/shared_Pref/pref_Keys.dart';
import 'package:mo_7_store/core/services/shared_Pref/shared_pref.dart';
import 'package:permission_handler/permission_handler.dart';

class PickImageUtil {
  const PickImageUtil._internal();
  static const PickImageUtil _instance = PickImageUtil._internal();

  factory PickImageUtil() {
    return _instance;
  }

  Future<XFile?> pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image != null) {
        SharedPref().setString(PrefKeys.profileImage,image.path);
        return XFile(image.path);
      }
      return null;
    } catch (e) {
      final permissionStatus =await Permission.photos.status;
      if (permissionStatus.isDenied) {
        //return permission dialog ;
      }else{
        debugPrint("Image Exception ===> $e");
      }
    }
    return null;
  }

  Future<void> showAlertPermissionsDialog(){
    return showCupertinoDialog(
      context: getit<GlobalKey<NavigatorState>>().currentState!.context,
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('Permissions Denied'),
          content: const Text('Allow access to gallery and photos'),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("cancel"),
            ),
            const CupertinoDialogAction(
              onPressed: openAppSettings,
              child: Text("Settings"),
            ),
          ],
        );
      },
    );
  }
}
