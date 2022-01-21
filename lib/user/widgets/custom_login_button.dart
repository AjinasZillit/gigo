import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gigo_clean/constants/constants.dart';

class CUstomLoginBUtton extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  CUstomLoginBUtton({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: kprimaryColor,
          borderRadius: BorderRadius.circular(20.w),
          border: Border.all(color: kprimaryColor),
        ),
        height: 50.h,
        width: 500.w,
        child: Row(
          children: [
            CircleAvatar(
                radius: 15.h, backgroundColor: ksecondarColor, child: icon),
            SizedBox(
              width: 10.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: ksecondarColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.h),
                ),
                Text(
                  subtitle,
                  style: TextStyle(color: ksecondarColor, fontSize: 13.h),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
