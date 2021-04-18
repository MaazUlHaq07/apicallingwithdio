// @dart=2.9
import 'package:apicalling/model/user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';

part 'singeluser.g.dart';

@JsonSerializable()

class SingleUser{

    SingleUser();

  @JsonKey(name : "data")
    User user;

  factory SingleUser.fromJson(Map<String, dynamic> json) => _$SingleUserFromJson(json);
  Map<String, dynamic> toJson() => _$SingleUserToJson(this);
}