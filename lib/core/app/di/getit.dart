
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:mo_7_store/core/app/cubit/app_cubit.dart';
import 'package:mo_7_store/core/services/graphql/api_service.dart';
import 'package:mo_7_store/core/services/graphql/dio_factory.dart';
import 'package:mo_7_store/features/auth/data/data_Source/auth_data_source.dart';
import 'package:mo_7_store/features/auth/data/repos/auth_repo.dart';
import 'package:mo_7_store/features/auth/presentation/bloc/auth_bloc.dart';

final getit = GetIt.instance;

Future<void> setUpInjection()async{
  await _initCore();
  await _initAuth();
}

Future<void> _initCore()async{
  final dio = DioFactory.getDio();
  final navigatorKey = GlobalKey<NavigatorState>();

  getit.registerFactory(AppCubit.new);
  getit.registerLazySingleton<ApiService>(()=>ApiService(dio));
  getit.registerSingleton<GlobalKey<NavigatorState>>(navigatorKey);
  
}

Future<void> _initAuth()async{

  getit.registerFactory(()=> AuthBloc(getit()));
  getit.registerLazySingleton(()=>AuthRepo(getit()));
  getit.registerLazySingleton(()=>AuthDataSource(getit()));
}