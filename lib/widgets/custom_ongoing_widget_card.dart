import 'package:flutter/material.dart';
import 'package:getxmvvm/resources/colors/app_colors.dart';
import 'package:getxmvvm/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OngoingCourseCard extends StatelessWidget {
  String? courseTitle;
  String? duration;
  String? mentorName;
  String? courseStatus;
  double? rating;
  String headerText;
  int? courseNo;
  OngoingCourseCard({
    Key? key,
    required this.courseTitle,
    required this.duration,
    required this.courseStatus,
    required this.mentorName,
    required this.rating,
    required this.headerText,
    this.courseNo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headerText,
            style: TextStyle(
              color: AppColors.secconderyColor,
              fontSize: 19.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 15.h),
          Container(
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.menu_book, color: Colors.white),
                        SizedBox(width: 8.w),
                        Text(
                          "COURSE ${courseNo}",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const Icon(Icons.bookmark_border, color: Colors.white),
                  ],
                ),

                SizedBox(height: 8.h),
                Text(
                  "Last seen 2 days ago",
                  style: TextStyle(color: Colors.white70, fontSize: 12.sp),
                ),

                SizedBox(height: 8.h),
                Row(
                  children: [
                    Text(
                      "UI/UX Design\nBasics",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.white, size: 16.sp),
                        SizedBox(width: 4.sp),
                        Text(
                          rating.toString(),
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 12.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 16,
                          backgroundImage: AssetImage(
                            "assets/images/mentor.png",
                          ), // Replace with your asset or network image
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chance Calzoni",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Mentor",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                          backgroundColor: Color.fromRGBO(231, 49, 33, 1),
                          width: 120.w,
                          text: 'Continue',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                // Continue Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                ),

                SizedBox(height: 8.h),

                // Progress Bar
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: LinearProgressIndicator(
                    value: 0.78,
                    backgroundColor: Colors.white24,
                    color: Color(0xFFE73121),
                    minHeight: 6,
                  ),
                ),
                SizedBox(height: 4.sp),
                Text(
                  "Completion",
                  style: TextStyle(color: Colors.white70, fontSize: 12.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
