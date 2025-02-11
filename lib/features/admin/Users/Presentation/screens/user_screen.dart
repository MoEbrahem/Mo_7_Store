import 'package:flutter/material.dart';
import 'package:mo_7_store/core/common/widgets/admin_app_bar.dart';
import 'package:mo_7_store/core/styles/theme/color_extension.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(
        backgroundColor: MyColors.dark.bluePinkDark!,
        title: "Users",
        isMain: true,
      ),
      body: const Center(
        child: Text(
          "User Screen ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
