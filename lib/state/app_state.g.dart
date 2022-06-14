// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      loggedUser: json['loggedUser'] == null
          ? null
          : User.fromJson(json['loggedUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'users': instance.users,
      'loggedUser': instance.loggedUser,
    };
