import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_number_response.g.dart';

@JsonSerializable()
class UsersNumberResponse {
  final UsersNumberData data;

  String get usersNumbers{
    if (data.usersList.isEmpty) {
      return '0';
    }
    return data.usersList.length.toString();
  }

  UsersNumberResponse({required this.data});
  factory UsersNumberResponse.fromJson(Map<String, dynamic> json) => _$UsersNumberResponseFromJson(json);
}

@JsonSerializable()
class UsersNumberData {

  UsersNumberData(this.usersList,);
  factory UsersNumberData.fromJson(Map<String,dynamic> json) => _$UsersNumberDataFromJson(json);
@JsonKey(name: 'users')
  final List<UsersNumberModel> usersList;

}

@JsonSerializable()
class UsersNumberModel {
  final String name;

  UsersNumberModel({required this.name});
  factory UsersNumberModel.fromJson(Map<String, dynamic> json) => _$UsersNumberModelFromJson(json);
}