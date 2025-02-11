import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/common/loading/loading_shimmer.dart';
import 'package:mo_7_store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:mo_7_store/core/common/widgets/text_app.dart';
import 'package:mo_7_store/core/extensions/context_ext.dart';
import 'package:mo_7_store/core/styles/fonts/fontFamily.dart';
import 'package:mo_7_store/core/styles/fonts/fontWeight.dart';

class DashboardContainer extends StatelessWidget {
  final String title;
  final String number;
  final String image;
  final bool isLoading;
  const DashboardContainer({super.key, required this.title, required this.number, required this.image, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 130.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
            TextApp(
              text: title,
              theme: context.textStyle.copyWith(
                fontSize: 24.sp,
                fontWeight: FontHelperWeight.fontBold,
                fontFamily: FontFamilyHelper.poppinsEnglishFont,
              ),
            ),
            const Spacer(),
            if(isLoading)
            LoadingShimmer(height: 30.h,width: 100.w,)
            else
            TextApp(
              text: number,
              theme: context.textStyle.copyWith(
                fontSize: 24.sp,
                fontWeight: FontHelperWeight.fontBold,
                fontFamily: FontFamilyHelper.poppinsEnglishFont,
              ),
            ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
