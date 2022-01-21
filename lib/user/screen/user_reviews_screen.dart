import 'package:flutter/material.dart';
import 'package:gigo_clean/constants/constants.dart';

class UserReviewsScreen extends StatefulWidget {
  const UserReviewsScreen({Key? key}) : super(key: key);

  @override
  _UserReviewsScreenState createState() => _UserReviewsScreenState();
}

class _UserReviewsScreenState extends State<UserReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ksecondarColor,
        title: const Text(
          "Reviews",
          style: TextStyle(color: kprimaryColor),
        ),
        iconTheme: const IconThemeData(color: kprimaryColor),
      ),
      body: Center(
        child: Text("Reviews"),
      ),
    );
  }
}
