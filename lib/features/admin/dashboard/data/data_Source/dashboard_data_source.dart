import 'package:mo_7_store/core/services/graphql/api_service.dart';
import 'package:mo_7_store/core/services/graphql/graphql_queries/admin/dashboard_queries.dart';
import 'package:mo_7_store/features/admin/dashboard/data/models/categories_number_response.dart';
import 'package:mo_7_store/features/admin/dashboard/data/models/products_number_response.dart';
import 'package:mo_7_store/features/admin/dashboard/data/models/user_number_response.dart';

class DashboardDataSource {
  DashboardDataSource(this._graphql);
  final ApiService _graphql;

  // Get Number Of Products
  Future<ProductsNumberResponse> numberOfProducts(){
    final response = _graphql.numberOfProducts(DashboardQueries().numberOfProductsMapQuery());
    return response;
  }

  // Get Number Of Categories
  Future<CategoriesNumberResponse> numberOfCategories(){
    final response = _graphql.numberOfCategories(DashboardQueries().numberOfCategoriesMapQuery());
    return response;
  }

  // Get Number Of Users
  Future<UsersNumberResponse> numberOfUsers(){
    final response = _graphql.numberOfUsers(DashboardQueries().numberOfUsersMapQuery());
    return response;
  }
  
}