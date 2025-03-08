import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mo_7_store/core/styles/images/app_images.dart';
import 'package:mo_7_store/core/utils/app_strings.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/bloc/Categories_Number/categories_number_bloc.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/bloc/Products_Number/products_number_bloc.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/bloc/Users_Number/users_number_bloc.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/widgets/dashboard_container.dart';

class DashBoardBody extends StatelessWidget {
  const DashBoardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<ProductsNumberBloc>().add(const ProductsNumberEvent.getProductsNumber());
          context.read<CategoriesNumberBloc>().add(const CategoriesNumberEvent.getCategoriesNumber());
          context.read<UsersNumberBloc>().add(const UsersNumberEvent.getUsersNumber());
        },
        child: ListView(
          children: [
            //Products
            BlocBuilder<ProductsNumberBloc, ProductsNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const DashboardContainer(
                      title: "Products",
                      number: '',
                      image: ImageAssets.productsDrawer,
                      isLoading: true,
                    );
                  },
                  success: (numbers) {
                    return DashboardContainer(
                      title: "Products",
                      number: numbers,
                      image: ImageAssets.productsDrawer,
                      isLoading: false,
                    );
                  },
                  error: (errorMsg) {
                    return const DashboardContainer(
                      title: "Products",
                      number: errorMessage,
                      image: ImageAssets.productsDrawer,
                      isLoading: false,
                    );
                  },
                );
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            //Categories
            BlocBuilder<CategoriesNumberBloc, CategoriesNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const DashboardContainer(
                      title: "Categories",
                      number: '',
                      image: ImageAssets.categoriesDrawer,
                      isLoading: true,
                    );
                  },
                  success: (numbers) {
                    return DashboardContainer(
                      title: "Categories",
                      number: numbers,
                      image: ImageAssets.categoriesDrawer,
                      isLoading: false,
                    );
                  },
                  error: (errorMsg) {
                    return const DashboardContainer(
                      title: "Categories",
                      number: errorMessage,
                      image: ImageAssets.categoriesDrawer,
                      isLoading: false,
                    );
                  },
                );
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            //Users
            BlocBuilder<CategoriesNumberBloc, CategoriesNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () {
                    return const DashboardContainer(
                      title: "Users",
                      number: '',
                      image: ImageAssets.usersDrawer,
                      isLoading: true,
                    );
                  },
                  success: (numbers) {
                    return DashboardContainer(
                      title: "Users",
                      number: numbers,
                      image: ImageAssets.usersDrawer,
                      isLoading: false,
                    );
                  },
                  error: (errorMsg) {
                    return const DashboardContainer(
                      title: "Users",
                      number: errorMessage,
                      image: ImageAssets.usersDrawer,
                      isLoading: false,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
