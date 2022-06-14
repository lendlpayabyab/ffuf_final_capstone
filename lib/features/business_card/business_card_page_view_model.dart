import 'package:async_redux/async_redux.dart';
import 'package:ffuf_final_capstone/models/user/_export.dart';

class BusinessCardPageViewModel extends Vm {
  BusinessCardPageViewModel({
    required this.userList,
    required this.loggedInUser,
  }) : super(
          equals: [
            userList,
            loggedInUser,
          ],
        );

  final List<User> userList;
  final User loggedInUser;
}
