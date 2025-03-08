import 'package:mo_7_store/core/services/graphql/api_result.dart';
import 'package:mo_7_store/features/admin/dashboard/data/data_Source/dashboard_data_source.dart';
import 'package:mo_7_store/features/admin/dashboard/data/models/categories_number_response.dart';
import 'package:mo_7_store/features/admin/dashboard/data/models/products_number_response.dart';
import 'package:mo_7_store/features/admin/dashboard/data/models/user_number_response.dart';

class DashboardRepo {
  DashboardRepo(this._dataSource);
  final DashboardDataSource _dataSource;

  Future<ApiResult<ProductsNumberResponse>> numberOfProducts ()async{
    try {
      final res = await _dataSource.numberOfProducts();
      return ApiResult.success(res);
    } catch (e) {
      return const ApiResult.failure("Please, try again we have error");
    }
  }

  Future<ApiResult<CategoriesNumberResponse>> numberOfCategoriess ()async{
    try {
      final res = await _dataSource.numberOfCategories();
      return ApiResult.success(res);
    } catch (e) {
      return const ApiResult.failure("Please, try again we have error");
    }
  }

  Future<ApiResult<UsersNumberResponse>> numberOfUsers ()async{
    try {
      final res = await _dataSource.numberOfUsers();
      return ApiResult.success(res);
    } catch (e) {
      return const ApiResult.failure("Please, try again we have error");
    }
  }
}