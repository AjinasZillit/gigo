import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class custom_user_home_button extends StatelessWidget {
  final String title;
  const custom_user_home_button({
    Key? key,
    required this.title,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.h,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, ),
            ),
            CircleAvatar(
              child: Icon(Icons.arrow_right),
            )
          ],
        ));
  }
}
