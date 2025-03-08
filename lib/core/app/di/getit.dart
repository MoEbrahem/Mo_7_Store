
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:mo_7_store/core/app/cubit/app_cubit.dart';
import 'package:mo_7_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:mo_7_store/core/app/upload_image/data_source/UploadImageDataSource.dart';
import 'package:mo_7_store/core/app/upload_image/repo/uploadImageRepo.dart';
import 'package:mo_7_store/core/services/graphql/api_service.dart';
import 'package:mo_7_store/core/services/graphql/dio_factory.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/bloc/Categories_Number/categories_number_bloc.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/bloc/Products_Number/products_number_bloc.dart';
import 'package:mo_7_store/features/admin/dashboard/Presentation/bloc/Users_Number/users_number_bloc.dart';
import 'package:mo_7_store/features/admin/dashboard/data/data_Source/dashboard_data_source.dart';
import 'package:mo_7_store/features/admin/dashboard/repo/dashboard_repo.dart';
import 'package:mo_7_store/features/auth/data/data_Source/auth_data_source.dart';
import 'package:mo_7_store/features/auth/data/repos/auth_repo.dart';
import 'package:mo_7_store/features/auth/presentation/bloc/auth_bloc.dart';

final getit = GetIt.instance;

Future<void> setUpInjection()async{
  await _initCore();
  await _initAuth();
  await _initDashBoard();
}

Future<void> _initDashBoard() async{
  getit..registerLazySingleton(()=> DashboardDataSource(getit()))
  ..registerLazySingleton(()=>DashboardRepo(getit()))
  ..registerFactory(()=>ProductsNumberBloc(getit()))
  ..registerFactory(()=>CategoriesNumberBloc(getit()))
  ..registerFactory(()=>UsersNumberBloc(getit()));
}
Future<void> _initCore()async{
  final dio = DioFactory.getDio();
  final navigatorKey = GlobalKey<NavigatorState>();

  getit..registerFactory(AppCubit.new)
  ..registerLazySingleton<ApiService>(()=>ApiService(dio))
  ..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey)
  ..registerFactory(()=>UploadImageCubit(getit()))
  ..registerLazySingleton(()=>UploadImageRepo(getit()))
  ..registerLazySingleton(()=>UploadImageDataSource(getit()));
  
}

Future<void> _initAuth()async{

  getit..registerFactory(()=> AuthBloc(getit()))
  ..registerLazySingleton(()=>AuthRepo(getit()))
  ..registerLazySingleton(()=>AuthDataSource(getit()));
}