import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_number_response.g.dart';

@JsonSerializable()
class CategoriesNumberResponse {
  final CategoriesNumberData data;

  String get categoriesNumbers{
    if (data.CategoriesList.isEmpty) {
      return '0';
    }
    return data.CategoriesList.length.toString();
  }

  CategoriesNumberResponse({required this.data});
  factory CategoriesNumberResponse.fromJson(Map<String, dynamic> json) => _$CategoriesNumberResponseFromJson(json);
}

@JsonSerializable()
class CategoriesNumberData {

  CategoriesNumberData(this.CategoriesList,);
  factory CategoriesNumberData.fromJson(Map<String,dynamic> json) => _$CategoriesNumberDataFromJson(json);
@JsonKey(name: 'categories')
  final List<CategoriesNumberModel> CategoriesList;

}

@JsonSerializable()
class CategoriesNumberModel {
  final String name;

  CategoriesNumberModel({required this.name});
  factory CategoriesNumberModel.fromJson(Map<String, dynamic> json) => _$CategoriesNumberModelFromJson(json);
}