import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gigo_clean/constants/constants.dart';
import 'package:gigo_clean/user/widgets/custom_user_home_button.dart';


class UserHomeTab extends StatefulWidget {
  const UserHomeTab({Key? key}) : super(key: key);

  @override
  _UserHomeTabState createState() => _UserHomeTabState();
}

class _UserHomeTabState extends State<UserHomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ksecondarColor,
        title: const Text(
          "Home",
          style: TextStyle(color: kprimaryColor),
        ),
        iconTheme: const IconThemeData(color: kprimaryColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              custom_user_home_button(title: "Book a new cleaning session"),
              custom_user_home_button(title: "Recent Bookings"),
              custom_user_home_button(title: "Reviews on cleaners"),
              custom_user_home_button(title: "Corporate Bookings"),
            ],
          ),
        ),
      ),
    );
  }
}
