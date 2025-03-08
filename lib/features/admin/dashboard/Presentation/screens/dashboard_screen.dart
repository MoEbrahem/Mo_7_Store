import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mo_7_store/core/app/di/getit.dart';
import 'package:mo_7_store/core/common/widgets/admin_app_bar.dart';
import 'package:mo_7_store/core/styles/theme/color_extension.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/bloc/Categories_Number/categories_number_bloc.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/bloc/Products_Number/products_number_bloc.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/bloc/Users_Number/users_number_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getit<ProductsNumberBloc>()..add(const ProductsNumberEvent.getProductsNumber()),
        ),
        BlocProvider(
          create: (context) => getit<CategoriesNumberBloc>()..add(const CategoriesNumberEvent.getCategoriesNumber()),
        ),
        BlocProvider(
          create: (context) => getit<UsersNumberBloc>()..add(const UsersNumberEvent.getUsersNumber()),
        ),
      ],
      child: Scaffold(
      appBar: AdminAppBar(
        backgroundColor: MyColors.dark.bluePinkDark!,
        title: "DashBoard",
        isMain: true,
      ),
      body: const Center(
        child: Text(
          "Dashboard Screen",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    ),
    );
  }
}
