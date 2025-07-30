import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getxmvvm/resources/colors/app_colors.dart';
import 'package:getxmvvm/resources/padding.dart';
import 'package:getxmvvm/viewmodel/controller/login/user_prefrence/users_prefrence.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getxmvvm/widgets/components/custom_recent_quiz.dart';
import 'package:getxmvvm/widgets/custom_button.dart';
import 'package:getxmvvm/widgets/custom_ongoing_widget_card.dart';
import 'package:getxmvvm/widgets/custom_recommended_mentors.dart';
import 'package:google_fonts/google_fonts.dart';

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
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding.w,
              vertical: 20.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset("assets/images/michel.png"),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            children: [
                              Text(
                                "Hi 👋 Michel",
                                style: TextStyle(
                                  color: AppColor.secconderyColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                ),
                              ),
                              Text(
                                "ID: 23156464",
                                style: TextStyle(
                                  color: AppColor.secconderyColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8.w),
                          SvgPicture.asset('assets/icons/copy.svg'),
                        ],
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.backGroundColor.withOpacity(0.1),
                      ),
                      child: SvgPicture.asset('assets/icons/notification.svg'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.backGroundColor.withOpacity(0.1),
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                        vertical: 14.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(22.r),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "Courses in\nProgress",
                              style: TextStyle(
                                color: AppColor.secconderyColor,
                                fontSize: 12.sp,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "03",
                                  style: TextStyle(
                                    color: AppColor.secconderyColor,
                                    fontSize: 20.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                        vertical: 14.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(22.r),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "Session\n Booked",
                              style: TextStyle(
                                color: AppColor.secconderyColor,
                                fontSize: 12.sp,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "03",
                                  style: TextStyle(
                                    color: AppColor.secconderyColor,
                                    fontSize: 20.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.w,
                        vertical: 14.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(22.r),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "Certificates\n Earned",
                              style: TextStyle(
                                color: AppColor.secconderyColor,
                                fontSize: 12.sp,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "03",
                                  style: TextStyle(
                                    color: AppColor.secconderyColor,
                                    fontSize: 20.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColor.primaryColor,
                  ),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ask the AI Tutor 24/7",
                            style: TextStyle(color: AppColor.secconderyColor),
                          ),
                          Text(
                            "Get instant academic help, practice quizzes,\nexplanations powered by AI.",
                            style: TextStyle(color: AppColor.secconderyColor),
                          ),
                          SizedBox(height: 10.h),
                          CustomButton(
                            width: 191.w,
                            backgroundColor: Color.fromRGBO(231, 49, 33, 1),
                            textColor: AppColor.secconderyColor,
                            text: 'Upgrade to Premium',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                OngoingCourseCard(
                  courseNo: 01,
                  headerText: 'Ongoing Course',
                  courseTitle: 'UI/UX Design Basics',
                  duration: '2 days ago',
                  courseStatus: 'completion',
                  mentorName: 'Chance Calzoni',
                  rating: 4.8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended Mentors",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        color: AppColor.secconderyColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "View ALl",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            color: AppColor.secconderyColor,
                          ),
                        ),
                        // SvgPicture.asset("assetName")
                      ],
                    ),
                  ],
                ),
                CustomRecommendedMentors(
                  headerText: 'Recommended Mentors',
                  imagePath: 'assets/images/abram.png',
                  name: 'Abram Curtis',
                  role: 'IELTS Expert',
                  rating: 4.8,
                  description:
                      'Passionate English trainer with 8+ years of experience helping global students build fluency and confidence.',
                  languages: 'English, German',
                  pricePerHour: '\$30/hr',
                  onViewProfileTap: () {
                    print('View profile tapped');
                  },
                  onBookSessionTap: () {
                    print('Book session tapped');
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended Teacher",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        color: AppColor.secconderyColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "View ALl",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            color: AppColor.secconderyColor,
                          ),
                        ),
                        // SvgPicture.asset("assetName")
                      ],
                    ),
                  ],
                ),
                CustomRecommendedMentors(
                  headerText: 'Giana Rhiel Madsen',
                  imagePath: 'assets/images/abram.png',
                  name: 'UI/UX Teacher',
                  role: 'IELTS Expert',
                  rating: 4.2,
                  description:
                      'Passionate English trainer with 8+ years of experience helping global students build fluency and confidence.',
                  languages: 'English, German',
                  pricePerHour: '\$30/hr',
                  onViewProfileTap: () {
                    print('View profile tapped');
                  },
                  onBookSessionTap: () {
                    print('Book session tapped');
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Session",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        color: AppColor.secconderyColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "View ALl",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            color: AppColor.secconderyColor,
                          ),
                        ),
                        // SvgPicture.asset("assetName")
                      ],
                    ),
                  ],
                ),
                CustomRecentQuizCard(
                  title: 'Spoken English with Emerson G.',
                  subtitle: 'Tomorrow at 4:00 PM',
                  icon:'assets/icons/alarm.svg',
                  iconBackgroundColor: AppColor.backGroundColor,
                  arrowColor: AppColor.secconderyColor,
                  firstIconBgColor: AppColor.backGroundColor,
                  onTap: () {
                    if (kDebugMode) {
                      print('Quiz card tapped');
                    }
                  },
                ), CustomRecentQuizCard(
                  title: 'Spoken English with Carter',
                  subtitle: 'Tomorrow at 4:00 PM',
                  icon:'assets/icons/alarm.svg',
                  iconBackgroundColor: AppColor.backGroundColor,
                  arrowColor: AppColor.secconderyColor,
                  firstIconBgColor: AppColor.backGroundColor,
                  onTap: () {
                    if (kDebugMode) {
                      print('Quiz card tapped');
                    }
                  },
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Courses",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.bold,
                        color: AppColor.secconderyColor,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "View ALl",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            color: AppColor.secconderyColor,
                          ),
                        ),
                        // SvgPicture.asset("assetName")
                      ],
                    ),
                  ],
                ),
                Container(
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: AppColor.backGroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 12.0,
                    ),
                    child: Column(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/money-03 (1).svg",
                                ),
                                Text(
                                  "FREE",
                                  style: GoogleFonts.dmSans(
                                    fontSize: 12.h,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.secconderyColor,
                                  ),
                                ),
                              ],
                            ),

                            CustomButton(
                              backgroundColor: AppColor.red,
                              width: 98.w,
                              text: "Enroll",
                              onTap: () {},
                            ),
                          ],
                        ),
                        Text(
                          "Duration: 2–5h",
                          style: GoogleFonts.dmSans(
                            fontSize: 12.h,
                            fontWeight: FontWeight.bold,
                            color: AppColor.secconderyColor,
                          ),
                        ),
                        Text(
                          "UI/UX Design Basics",
                          style: GoogleFonts.dmSans(
                            fontSize: 22.h,
                            fontWeight: FontWeight.bold,
                            color: AppColor.secconderyColor,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 16,
                                  backgroundImage: AssetImage(
                                    "assets/images/mentor.png",
                                  ), // Replace with your asset or network image
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Chance Calzoni",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 12.h,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.secconderyColor,
                                      ),
                                    ),
                                    Text(
                                      "Teacher",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 12.h,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.secconderyColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 16.sp,
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  "4.2",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
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
