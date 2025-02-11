import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:mo_7_store/core/common/widgets/text_app.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/styles/fonts/fontFamily.dart';
import 'package:mo_7_store/core/styles/fonts/fontWeight.dart';

class AdminAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final String title;
  final bool isMain;
  const AdminAppBar({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.isMain,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextApp(
        text: title,
        theme: context.textStyle.copyWith(
          fontSize: 18.sp,
          fontWeight: FontHelperWeight.fontBold,
          fontFamily: FontFamilyHelper.poppinsEnglishFont,
          color: Colors.white,
        ),
      ),
      leading: isMain ?
        IconButton(
        onPressed: () {
          ZoomDrawer.of(context)!.toggle();
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ):const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50.h);
}
