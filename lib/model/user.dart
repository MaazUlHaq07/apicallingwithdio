// @dart=2.9
import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:build_runner/build_runner.dart';

part 'user.g.dart';

@JsonSerializable()

class User{
  User();
  @JsonKey(name: "id")
    int id;

  @JsonKey(name: "email")
   String email;

  @JsonKey(name: "first_name")
    String firstName;

  @JsonKey(name: "last_name")
     String lastName;

  @JsonKey(name: "avatar")
     String avatar;



  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}


