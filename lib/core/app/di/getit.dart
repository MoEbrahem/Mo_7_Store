
import 'package:get_it/get_it.dart';
import 'package:mo_7_store/core/app/cubit/app_cubit.dart';

final getit = GetIt.instance;



Future<void> setUpInjection()async{
  getit.registerFactory(AppCubit.new);
}