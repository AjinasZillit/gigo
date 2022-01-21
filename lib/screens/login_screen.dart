import 'package:flutter/material.dart';
import 'package:gigo_clean/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gigo_clean/user/screen/user_home_screen.dart';
import 'package:gigo_clean/user/widgets/custom_login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 500.w,
                  height: 300.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("download.png"),
                    ),
                  ),
                ),
                const Text(
                  "Get ready to make your life easy with single click \n of app. Which makes your cleaning easy",
                  style: TextStyle(color: Colors.grey),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserHomeScreen()));
                  },
                  child: CUstomLoginBUtton(
                    title: "USER",
                    subtitle: "Are you a user",
                    icon: Icon(
                      Icons.person,
                      color: kprimaryColor,
                      size: 25.h,
                    ),
                  ),
                ),
                CUstomLoginBUtton(
                  title: "CLEANER",
                  subtitle: "Are you a cleaner ?",
                  icon: Icon(
                    Icons.cleaning_services_rounded,
                    color: kprimaryColor,
                    size: 25.h,
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Convinient",
                        style: TextStyle(color: kprimaryColor, fontSize: 15.h),
                      ),
                      VerticalDivider(
                        color: kprimaryColor,
                        width: 10.h,
                      ),
                      Text(
                        "Reliable",
                        style: TextStyle(color: kprimaryColor, fontSize: 15.h),
                      ),
                      VerticalDivider(
                        color: kprimaryColor,
                        width: 10.h,
                      ),
                      Text(
                        "Affordable",
                        style: TextStyle(color: kprimaryColor, fontSize: 15.h),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
