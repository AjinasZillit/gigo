import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gigo_clean/constants/constants.dart';

class UserNewSessionConfirmScreen extends StatefulWidget {
  const UserNewSessionConfirmScreen({Key? key}) : super(key: key);

  @override
  _UserNewSessionConfirmScreenState createState() =>
      _UserNewSessionConfirmScreenState();
}

class _UserNewSessionConfirmScreenState
    extends State<UserNewSessionConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ksecondarColor,
        title: const Text(
          "Pricing and availability",
          style: TextStyle(color: kprimaryColor),
        ),
        iconTheme: const IconThemeData(color: kprimaryColor),
      ),
    );
  }
}
