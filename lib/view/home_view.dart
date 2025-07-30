import 'package:flutter/material.dart';
import 'package:getxmvvm/resources/colors/app_colors.dart';
import 'package:getxmvvm/viewmodel/controller/login/user_prefrence/users_prefrence.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  UsersPrefrence usersPrefrence = UsersPrefrence();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(child: Image.asset("name")),
                    Column(
                      children: [
                        Text(
                          "Hi 👋 Jaylon Culhane",
                          style: TextStyle(color: AppColor.white),
                        ),
                        Text("Mentor", style: TextStyle(color: AppColor.white)),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.baseColor,
                      ),
                      child: Image.asset("name"),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColor.baseColor,
                  ),
                  child: Row(
                    children: [
                      Image.asset("name"),
                      Text("Switch", style: TextStyle(color: AppColor.white)),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Total Sessions Take",
                            style: TextStyle(color: AppColor.white),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "26",
                                style: TextStyle(color: AppColor.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Upcoming Sessions",
                            style: TextStyle(color: AppColor.white),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "03",
                                style: TextStyle(color: AppColor.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Average Rating",
                            style: TextStyle(color: AppColor.white),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "4.8",
                                style: TextStyle(color: AppColor.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColor.primaryColor,
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Total Earings",
                            style: TextStyle(color: AppColor.white),
                          ),
                          Text(
                            "\$540.00",
                            style: TextStyle(color: AppColor.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColor.primaryColor,
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Stand out with a VerifiedBadge",
                            style: TextStyle(color: AppColor.white),
                          ),
                          Image.asset("name"),
                        ],
                      ),
                      Text(
                        "Boost your profile and get listed as a featured mentor to increase your Bookings.",
                        style: TextStyle(color: AppColor.white),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.red,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Boost Now",
                              style: TextStyle(color: AppColor.white),
                            ),
                            Image(image: AssetImage("assetName")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Text(
                  "Upcoming Seesions",
                  style: TextStyle(color: AppColor.white),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColor.primaryColor,
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("name"),
                          Column(
                            children: [
                              Text(
                                "Michel",
                                style: TextStyle(color: AppColor.white),
                              ),
                              Text(
                                "Student",
                                style: TextStyle(color: AppColor.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Divider(color: AppColor.red)),
                        ],
                      ),
                      Text(
                        "10 May, 3:00 PM - 4:00",
                        style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Type",
                                style: TextStyle(color: AppColor.white),
                              ),
                              Text(
                                "Group",
                                style: TextStyle(color: AppColor.white),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                            width: 5,
                            decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Duration",
                                style: TextStyle(color: AppColor.white),
                              ),
                              Text(
                                "1hr",
                                style: TextStyle(color: AppColor.white),
                              ),
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 1,
                            decoration: BoxDecoration(color: AppColor.white),
                          ),
                          Column(
                            children: [
                              Text(
                                "Seats Left",
                                style: TextStyle(color: AppColor.white),
                              ),
                              Text(
                                "2-5",
                                style: TextStyle(color: AppColor.white),
                              ),
                            ],
                          ),
                          Container(
                            height: 10,
                            width: 5,
                            decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Language",
                                style: TextStyle(color: AppColor.white),
                              ),
                              Text(
                                "English/Arabic",
                                style: TextStyle(color: AppColor.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(child: Divider(color: AppColor.red)),
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: AppColor.red,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Start Session",
                                  style: TextStyle(color: AppColor.white),
                                ),
                                Image(image: AssetImage("assetName")),
                              ],
                            ),
                          ),
                          Image(image: AssetImage("assetName")),
                        ],
                      ),
                      SizedBox(width: 5),
                      Row(
                        children: [
                          Text(
                            "Recent Sessions History",
                            style: TextStyle(color: AppColor.white),
                          ),
                          Row(
                            children: [
                              Text(
                                "View All",
                                style: TextStyle(color: AppColor.white),
                              ),
                              Image(image: AssetImage("assetName")),
                            ],
                          ),
                        ],
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(22),
                      //   ),
                      //   child: Row(
                      //     children: [
                      //       Text("Boost Now"),
                      //       Image(image: AssetImage("assetName")),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
