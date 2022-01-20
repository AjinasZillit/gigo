import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gigo_clean/constants/constants.dart';
import 'package:gigo_clean/screens/user_new_session_confirm_page.dart';

class UserNewSessionScreen extends StatefulWidget {
  const UserNewSessionScreen({Key? key}) : super(key: key);

  @override
  _UserNewSessionScreenState createState() => _UserNewSessionScreenState();
}

class _UserNewSessionScreenState extends State<UserNewSessionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ksecondarColor,
        title: const Text(
          "New cleaning Session",
          style: TextStyle(color: kprimaryColor),
        ),
        iconTheme: const IconThemeData(color: kprimaryColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Enter Zipcode"), Icon(Icons.location_on)],
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Service requested date and time"),
                    Icon(Icons.calendar_today)
                  ],
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Required cleaners"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Please indicate the size of house in SQ ft"),
                    Icon(Icons.stay_primary_landscape_sharp)
                  ],
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("How many bedrooms and bathrooms"),
                    Icon(Icons.house)
                  ],
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("No. of hours"), Icon(Icons.arrow_drop_down)],
                ),
              ),
            ),
            Container(
              width: 200.w,
              child: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UserNewSessionConfirmScreen()));
                },
                label: Text(
                  "Next",
                  style: TextStyle(color: ksecondarColor),
                ),
                backgroundColor: kprimaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
