import 'package:flutter/material.dart';
import 'package:gigo_clean/constants/constants.dart';

class UserServicesSCreen extends StatefulWidget {
  const UserServicesSCreen({Key? key}) : super(key: key);

  @override
  _UserServicesSCreenState createState() => _UserServicesSCreenState();
}

class _UserServicesSCreenState extends State<UserServicesSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ksecondarColor,
        title: const Text(
          "Services",
          style: TextStyle(color: kprimaryColor),
        ),
        iconTheme: const IconThemeData(color: kprimaryColor),
      ),
      body: Center(
        child: Text("services"),
      ),
    );
  }
}
