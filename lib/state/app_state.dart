import 'package:ffuf_final_capstone/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    required List<User> users,
    User? loggedUser,
  }) = _AppState;

  factory AppState.initialState() => AppState(
        users: List<User>.empty(),
      );

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
