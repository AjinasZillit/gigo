import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gigo_clean/constants/constants.dart';
import 'package:gigo_clean/screens/user_new_session_confirm_page.dart';
import 'package:dotted_line/dotted_line.dart';

class UserNewSessionScreen extends StatefulWidget {
  const UserNewSessionScreen({Key? key}) : super(key: key);

  @override
  _UserNewSessionScreenState createState() => _UserNewSessionScreenState();
}

class _UserNewSessionScreenState extends State<UserNewSessionScreen> {
  bool isConfirmed = false;
  @override
  Widget build(BuildContext context) {
    return isConfirmed == false
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: ksecondarColor,
              title: const Text(
                "New cleaning Session",
                style: TextStyle(color: kprimaryColor),
              ),
              iconTheme: const IconThemeData(color: kprimaryColor),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Enter Zipcode"),
                          Icon(Icons.location_on)
                        ],
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
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
                        children: const [
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
                        children: const [
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
                        children: const [
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
                        children: const [
                          Text("No. of hours"),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 200.w,
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             UserNewSessionConfirmScreen()));
                        setState(() {
                          isConfirmed = true;
                        });
                      },
                      label: const Text(
                        "Next",
                        style: TextStyle(color: ksecondarColor),
                      ),
                      backgroundColor: kprimaryColor,
                    ),
                  )
                ],
              ),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              backgroundColor: ksecondarColor,
              title: const Text(
                "Pricing and availability",
                style: TextStyle(color: kprimaryColor),
              ),
              iconTheme: const IconThemeData(color: kprimaryColor),
            ),
            body: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Type of cleaning"),
                            ],
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Cleaners involved"),
                            ],
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Hourly charges per cleaner"),
                            ],
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Total no. of hours"),
                            ],
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Total billing amount + Tax"),
                            ],
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Promo code"),
                              Text(
                                "APPLY",
                                style: TextStyle(
                                  color: kprimaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Order summary",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text("Order Amount"),
                                    Text("Taxes"),
                                    Text("Discount"),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text(""),
                                    Text(" \$80"),
                                    Text("\$5"),
                                    Text("-\$10"),
                                  ],
                                ),
                              ],
                            ),
                            const DottedLine(
                              dashColor: kprimaryColor,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Total",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$75.00",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 10.h,
                            width: 10.w,
                            decoration: BoxDecoration(
                                border: Border.all(), color: Colors.grey),
                          ),
                          const Text("I have read and agree to the "),
                          const Text(
                            "terms of services",
                            style: TextStyle(color: kprimaryColor),
                          )
                        ],
                      ),
                      FloatingActionButton.extended(
                          backgroundColor: kprimaryColor,
                          onPressed: () {},
                          label: const Text(
                            "Confirm",
                            style: TextStyle(color: ksecondarColor),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
