import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String userId,
    required String firstName,
    required String lastName,
    required String position,
    required String address,
    required String email,
    required String telephone,
    required String fax,
    required String mobile,
    required String profileImageUrl,
    required String qrImageUrl,
    required String supervisorId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
