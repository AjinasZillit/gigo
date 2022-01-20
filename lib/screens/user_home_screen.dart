import 'package:flutter/material.dart';
import 'package:gigo_clean/constants/constants.dart';
import 'package:gigo_clean/screens/user_booking_screen.dart';
import 'package:gigo_clean/screens/user_home_tab.dart';
import 'package:gigo_clean/screens/user_new_session_screen.dart';
import 'package:gigo_clean/screens/user_reviews_screen.dart';
import 'package:gigo_clean/screens/user_services_screen.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  _UserHomeScreenState createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  int currentIndex = 0;
  final screens = [
    UserHomeTab(),
    UserNewSessionScreen(),
    UserBookingScreen(),
    UserServicesSCreen(),
    UserReviewsScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        unselectedItemColor: kprimaryColor,
        selectedIconTheme: const IconThemeData(size: 50, color: ksecondarColor),
        unselectedIconTheme: const IconThemeData(color: kprimaryColor),
        selectedFontSize: 15,
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: "New Session"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              label: "Booking"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt_outlined,
              ),
              label: "Services"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_comment_sharp,
              ),
              label: "Reviews"),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
    );
  }
}
