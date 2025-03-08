import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mo_7_store/features/admin/dashboard/repo/dashboard_repo.dart';

part 'products_number_event.dart';
part 'products_number_state.dart';
part 'products_number_bloc.freezed.dart';

class ProductsNumberBloc
    extends Bloc<ProductsNumberEvent, ProductsNumberState> {
  ProductsNumberBloc(this._repo) : super(const ProductsNumberState.loading()) {
    on<GetProductsNumberEvent>(_getProductsNumber);
  }
  final DashboardRepo _repo;

  FutureOr<void> _getProductsNumber(
      GetProductsNumberEvent event, Emitter<ProductsNumberState> emit) async {
    emit(const ProductsNumberState.loading());    
    final result = await _repo.numberOfProducts();
    result.when(
      success: (data) {
        emit(
          ProductsNumberState.success(
            numbers: data.productsNumbers,
          ),
        );
      },
      failure: (error) {
        emit(
          ProductsNumberState.error(
            errorMsg: error,
          ),
        );
      },
    );
  }
}
