import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/styles/images/app_images.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/widgets/dashboard_container.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          children:  [
            
            //Products
            const DashboardContainer(
              title: "Products",
              number: '0',
              image: ImageAssets.productsDrawer,
              isLoading: false,
            ),
            SizedBox(height: 20.h,),
            //Categories
            const DashboardContainer(
              title: "Categories",
              number: '1',
              image: ImageAssets.categoriesDrawer,
              isLoading: false,
            ),
            SizedBox(height: 20.h,),
            //Users
            const DashboardContainer(
              title: "Users",
              number: '0',
              image: ImageAssets.usersDrawer,
              isLoading: false,
            ),
          ],
        ),
      ),
    );
  }
}
