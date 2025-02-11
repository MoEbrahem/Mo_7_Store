import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:mo_7_store/core/common/widgets/admin_app_bar.dart';
import 'package:mo_7_store/core/styles/images/app_images.dart';
import 'package:mo_7_store/core/styles/theme/color_extension.dart';
import 'package:mo_7_store/core/utils/admin_drawer_list.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/screens/dashboard_screen.dart';

class HomeAdminScreen extends StatefulWidget {
  const HomeAdminScreen({super.key});

  @override
  State<HomeAdminScreen> createState() => _HomeAdminScreenState();
}

class _HomeAdminScreenState extends State<HomeAdminScreen> {
  Widget page = const DashboardScreen();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: Builder(
        builder: (context) {
          return MenuAdminScreen(
            onPageChanged: (a) {
              setState(() {
                page = a;
              });
              ZoomDrawer.of(context)!.close();
            },
          );
        },
      ),
      mainScreen: page,
      borderRadius: 24,
      showShadow: true,
      drawerShadowsBackgroundColor: MyColors.dark.mainColor!.withOpacity(0.6),
      menuBackgroundColor: MyColors.dark.bluePinkDark!,
    );
  }
}

class MenuAdminScreen extends StatelessWidget {
  final void Function(Widget) onPageChanged;
  const MenuAdminScreen({super.key, required this.onPageChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(
        backgroundColor: MyColors.dark.bluePinkDark!,
        title: "Mo_7_Store",
        isMain: false,
      ),
      body: Column(
        children: [
          Column(
            children: adminDrawerList(context)
                .map((e) => ListTile(
                      leading: e.icon,
                      title: e.title,
                      onTap: () {
                        onPageChanged(e.page);
                      },
                    ))
                .toList(),
          ),
          Expanded(
            child: Image.asset(ImageAssets.drawerImage),
          ),
        ],
      ),
    );
  }
}
