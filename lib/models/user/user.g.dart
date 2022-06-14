// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      position: json['position'] as String,
      address: json['address'] as String,
      email: json['email'] as String,
      telephone: json['telephone'] as String,
      fax: json['fax'] as String,
      mobile: json['mobile'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      qrImageUrl: json['qrImageUrl'] as String,
      supervisorId: json['supervisorId'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'position': instance.position,
      'address': instance.address,
      'email': instance.email,
      'telephone': instance.telephone,
      'fax': instance.fax,
      'mobile': instance.mobile,
      'profileImageUrl': instance.profileImageUrl,
      'qrImageUrl': instance.qrImageUrl,
      'supervisorId': instance.supervisorId,
    };
