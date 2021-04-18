// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.9

part of 'singeluser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleUser _$SingleUserFromJson(Map<String, dynamic> json) {
  return SingleUser()
    ..user = User.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SingleUserToJson(SingleUser instance) =>
    <String, dynamic>{
      'data': instance.user,
    };
