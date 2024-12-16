
import 'package:get_it/get_it.dart';
import 'package:mo_7_store/core/app/cubit/app_cubit.dart';
import 'package:mo_7_store/core/services/graphql/api_service.dart';
import 'package:mo_7_store/core/services/graphql/dio_factory.dart';

final getit = GetIt.instance;



Future<void> setUpInjection()async{
  final dio = DioFactory.getDio();

  getit.registerFactory(AppCubit.new);
  getit.registerLazySingleton<ApiService>(()=>ApiService(dio));
}