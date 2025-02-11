// List<DrawerItemModel>

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/common/dialogue/custom_dialogs.dart';
import 'package:mo_7_store/core/common/widgets/text_app.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/routes/AppRoutes.dart';
import 'package:mo_7_store/core/services/shared_Pref/pref_Keys.dart';
import 'package:mo_7_store/core/services/shared_Pref/shared_pref.dart';
import 'package:mo_7_store/core/styles/fonts/fontFamily.dart';
import 'package:mo_7_store/core/styles/fonts/fontWeight.dart';
import 'package:mo_7_store/features/admin/Add_Categories/Presentation/screens/add_categories_screen.dart';
import 'package:mo_7_store/features/admin/Add_Notifications/Presentation/screens/add_notifications_screen.dart';
import 'package:mo_7_store/features/admin/Add_Products/Presentation/screens/add_Products_screen.dart';
import 'package:mo_7_store/features/admin/Users/Presentation/screens/user_screen.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/screens/dashboard_screen.dart';

List<DrawerItemModel> adminDrawerList(BuildContext context) {
  return <DrawerItemModel>[
    //DashBoard
    DrawerItemModel(
      icon: const Icon(
        Icons.dashboard,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'DashBoard',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglishFont,
          fontWeight: FontHelperWeight.fontBold,
        ),
      ),
      page: const DashboardScreen(),
    ),
    //Categories
    DrawerItemModel(
      icon: const Icon(Icons.category_outlined, color: Colors.white),
      title: TextApp(
        text: 'Categories',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglishFont,
          fontWeight: FontHelperWeight.fontBold,
        ),
      ),
      page: const AddCategoriesScreen(),
    ),
    //Product
    DrawerItemModel(
      icon: const Icon(
        Icons.production_quantity_limits,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'Products',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglishFont,
          fontWeight: FontHelperWeight.fontBold,
        ),
      ),
      page: const AddProductsScreen(),
    ),
    //Users
    DrawerItemModel(
      icon: const Icon(
        Icons.people_alt_rounded,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'Users',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglishFont,
          fontWeight: FontHelperWeight.fontBold,
        ),
      ),
      page: const UsersScreen(),
    ),
    //Notifications
    DrawerItemModel(
      icon: const Icon(
        Icons.notifications_active,
        color: Colors.white,
      ),
      title: TextApp(
        text: 'Notifications',
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 17.sp,
          fontFamily: FontFamilyHelper.poppinsEnglishFont,
          fontWeight: FontHelperWeight.fontBold,
        ),
      ),
      page: const AddNotificationsScreen(),
    ),
    //LogOut
    DrawerItemModel(
      icon: const Icon(
        Icons.exit_to_app,
        color: Colors.white,
      ),
      title: GestureDetector(
        onTap: () {
          CustomDialog.twoButtonDialog(
            context: context,
            textBody: 'Do you want log out?',
            textButton1: 'Yes',
            textButton2: 'No',
            isLoading: false,
            onPressed: () async {
              final navigator = Navigator.of(context);
              await SharedPref().removePreference(PrefKeys.accessToken);
              await SharedPref().removePreference(PrefKeys.userId);
              await SharedPref().removePreference(PrefKeys.userRole);
              await navigator.pushNamedAndRemoveUntil(
                AppRoutes.login,
                (route) => false,
              );
            },
          );
        },
        child: const Text(
          'Logout',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontHelperWeight.fontBold,
            fontSize: 17,
          ),
        ),
      ),
      page: const UsersScreen(),
    ),
  ];
}

class DrawerItemModel {
  DrawerItemModel({
    required this.icon,
    required this.title,
    required this.page,
  });

  final Icon icon;
  final Widget title;
  final Widget page;
}
