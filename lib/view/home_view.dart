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
      backgroundColor: AppColors.primaryColor,
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
                      children: [Text("Hi 👋 Jaylon Culhane",style: TextStyle(color: AppColors.secconderyColor),), Text("Mentor",style: TextStyle(color: AppColors.secconderyColor))],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.backGroundColor,
                      ),
                      child: Image.asset("name"),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColors.backGroundColor,
                  ),
                  child: Row(children: [Image.asset("name"), Text("Switch",style: TextStyle(color: AppColors.secconderyColor))]),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Total Sessions Take",style: TextStyle(color: AppColors.secconderyColor)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [Text("26",style: TextStyle(color: AppColors.secconderyColor))],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Upcoming Sessions",style: TextStyle(color: AppColors.secconderyColor)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [Text("03",style: TextStyle(color: AppColors.secconderyColor))],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Average Rating",style: TextStyle(color: AppColors.secconderyColor)),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [Text("4.8",style: TextStyle(color: AppColors.secconderyColor))],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColors.primaryColor,
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        children: [Text("Total Earings",style: TextStyle(color: AppColors.secconderyColor)), Text("\$540.00",style: TextStyle(color: AppColors.secconderyColor))],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColors.primaryColor,
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Stand out with a VerifiedBadge",style: TextStyle(color: AppColors.secconderyColor)),
                          Image.asset("name"),
                        ],
                      ),
                      Text(
                        "Boost your profile and get listed as a featured mentor to increase your Bookings.",style: TextStyle(color: AppColors.secconderyColor),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.redColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Row(
                          children: [
                            Text("Boost Now",style: TextStyle(color: AppColors.secconderyColor)),
                            Image(image: AssetImage("assetName")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Text("Upcoming Seesions",style: TextStyle(color: AppColors.secconderyColor)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColors.primaryColor,
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset("name"),
                          Column(children: [Text("Michel",style: TextStyle(color: AppColors.secconderyColor)), Text("Student",style: TextStyle(color: AppColors.secconderyColor))]),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(color: AppColors.redColor),
                          ),
                        ],
                      ),
                      Text("10 May, 3:00 PM - 4:00",style: TextStyle(color: AppColors.secconderyColor,fontWeight: FontWeight.bold,fontSize: 28)),
                      Row(
                        spacing: 10,
                        children: [
                          Column(children: [Text("Type",style: TextStyle(color: AppColors.secconderyColor)), Text("Group",style: TextStyle(color: AppColors.secconderyColor))]),
                          Container(
                            height: 10,
                            width: 5,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                            ),
                          ),
                          Column(children: [Text("Duration",style: TextStyle(color: AppColors.secconderyColor)), Text("1hr",style: TextStyle(color: AppColors.secconderyColor))]),
                          Container(
                            height: 30,
                            width: 1,
                            decoration: BoxDecoration(
                              color: AppColors.secconderyColor,
                            ),
                          ),
                          Column(children: [Text("Seats Left",style: TextStyle(color: AppColors.secconderyColor)), Text("2-5",style: TextStyle(color: AppColors.secconderyColor))]),
                          Container(
                            height: 10,
                            width: 5,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                            ),
                          ),
                          Column(
                            children: [
                              Text("Language",style: TextStyle(color: AppColors.secconderyColor)),
                              Text("English/Arabic",style: TextStyle(color: AppColors.secconderyColor)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(color: AppColors.redColor),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: AppColors.redColor,
                            ),
                            child: Row(
                              children: [
                                Text("Start Session",style: TextStyle(color: AppColors.secconderyColor)),
                                Image(image: AssetImage("assetName")),
                              ],
                            ),
                          ),
                          Image(image: AssetImage("assetName"))
                        ],
                      ),
                      SizedBox(width: 5,),
                      Row(
                        children: [
                          Text("Recent Sessions History",style: TextStyle(color: AppColors.secconderyColor)),
                          Row(
                            children: [
                              Text("View All",style: TextStyle(color: AppColors.secconderyColor)),
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
