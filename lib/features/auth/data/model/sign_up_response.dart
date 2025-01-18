
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_response.g.dart';
@JsonSerializable()
class SignUpResponse{
  SignUpResponse(this.data);
  final SignUpDataModel data;
  
  factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);

}

@JsonSerializable()
class SignUpDataModel{
  final AddUserModel addUser;
  SignUpDataModel({
    required this.addUser,
  });
  factory SignUpDataModel.fromJson(Map<String,dynamic> json)=> _$SignUpDataModelFromJson(json);
}

@JsonSerializable()
class AddUserModel{
  final String id ;
  final String email ;
  AddUserModel({
    required this.id,
    required this.email,
  });
  
  factory AddUserModel.fromJson(Map<String, dynamic> json) => _$AddUserModelFromJson(json);
}