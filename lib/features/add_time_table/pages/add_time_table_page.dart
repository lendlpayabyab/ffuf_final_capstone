import 'package:ffuf_final_capstone/models/union_page_state.dart';
import 'package:ffuf_final_capstone/models/user/_export.dart';
import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:ffuf_final_capstone/widgets/_export.dart';
import 'package:flutter/material.dart';

class AddTimeTablePage extends StatelessWidget {
  const AddTimeTablePage({
    required this.unionPageState,
    Key? key,
  }) : super(key: key);

  final UnionPageState<List<User>> unionPageState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'asdasd',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ResponsiveSafeArea(
        builder: (context, height, width) {
          return SizedBox(
            height: height,
            width: width,
            child: Column(
              children: [
                const Text(
                  'Employee List:',
                  style: TextStyle(color: Colors.black),
                ),
                unionPageState.when(
                  (users) => ListView(
                    shrinkWrap: true,
                    children: users
                        .map(
                          (u) => Text(
                            u.firstName,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  loading: () => Expanded(child: LoadingPage()),
                  error: (message) => EmptyPageWithMessage(message: message!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
