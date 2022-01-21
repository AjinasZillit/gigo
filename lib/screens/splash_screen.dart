import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gigo_clean/constants/constants.dart';
import 'package:gigo_clean/screens/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300.h,
                width: 500.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("download.png"),
                  ),
                ),
              ),
              FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  backgroundColor: kprimaryColor,
                  label: Row(
                    children: const [
                      Text("Get Started"),
                      Icon(Icons.arrow_right)
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
