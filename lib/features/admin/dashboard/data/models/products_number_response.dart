import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_number_response.g.dart';

@JsonSerializable()
class ProductsNumberResponse {
  final ProductsNumberData data;

  String get productsNumbers{
    if (data.productsList.isEmpty) {
      return '0';
    }
    return data.productsList.length.toString();
  }

  ProductsNumberResponse({required this.data});
  factory ProductsNumberResponse.fromJson(Map<String, dynamic> json) => _$ProductsNumberResponseFromJson(json);
}

@JsonSerializable()
class ProductsNumberData {

  ProductsNumberData(this.productsList,);
  factory ProductsNumberData.fromJson(Map<String,dynamic> json) => _$ProductsNumberDataFromJson(json);
@JsonKey(name: 'products')
  final List<ProductsNumberModel> productsList;

}

@JsonSerializable()
class ProductsNumberModel {
  final String title;

  ProductsNumberModel({required this.title});
  factory ProductsNumberModel.fromJson(Map<String, dynamic> json) => _$ProductsNumberModelFromJson(json);
}