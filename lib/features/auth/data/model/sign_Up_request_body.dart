import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_Up_request_body.g.dart';
@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String password;
  final String avatar;

  SignUpRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.avatar,
  });
  Map<String,dynamic> toJson()=> _$SignUpRequestBodyToJson(this);
}
