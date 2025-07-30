import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getxmvvm/resources/colors/app_colors.dart';
import 'package:getxmvvm/resources/routes/routes_name.dart';
import 'package:getxmvvm/utils/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class RoleSelectionScreen extends StatefulWidget {
  const RoleSelectionScreen({super.key});

  @override
  State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  String selectedRole = "Fighter";

  @override
  Widget build(BuildContext context) {
    Responsive.init(context);

    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What describes you best?',
                style: GoogleFonts.rethinkSans(
                  fontSize: 32,
                  color: AppColor.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Select your role to customize your learning experience.',
                style: GoogleFonts.rethinkSans(
                  fontSize: 16,
                  color: AppColor.white,
                ),
              ),
              const SizedBox(height: 20),
              // Fighter option
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RoleSelectionCard(
                    svgImage: "assets/icons/advertising_4318884 1 (1).svg",
                    title: "I’m a Student",
                    isSelected: selectedRole == "Student",
                    onTap: () {
                      setState(() {
                        selectedRole = "Student";
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  RoleSelectionCard(
                    svgImage: "assets/icons/advertising_4318884 1 (1).svg",
                    title: "I’m a Mentor",
                    isSelected: selectedRole == "Mentor",
                    onTap: () {
                      setState(() {
                        selectedRole = "Mentor";
                      });
                    },
                  ),
                  const SizedBox(height: 20),

                  // Promoter option
                  RoleSelectionCard(
                    svgImage: "assets/icons/boxing.svg",
                    title: "I'm a Teacher",
                    isSelected: selectedRole == "Teacher",
                    onTap: () {
                      setState(() {
                        selectedRole = "Teacher";
                      });
                    },
                  ),
                ],
              ),

              const Spacer(),

              ElevatedButton(
                onPressed:
                    selectedRole == null
                        ? null
                        : () {
                          // Proceed with the selected role
                          print('Selected role: $selectedRole');
                          Navigator.pushNamed(context, RoutesName.homeview);
                        },
                child: const Text('Continue', style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.red,
                  foregroundColor: AppColor.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoleSelectionCard extends StatelessWidget {
  final String title;
  final String svgImage;
  final bool isSelected;
  final VoidCallback onTap;

  const RoleSelectionCard({
    required this.title,
    required this.isSelected,
    required this.svgImage,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        // height: 120,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.red : AppColor.baseColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? AppColor.red : AppColor.primaryColor,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(svgImage.toString()),
            Text(
              title,
              style: GoogleFonts.rethinkSans(
                fontWeight: FontWeight.w300,
                color: AppColor.white,
              ),
            ),
          ],
        ),

        //  Center(
        //   child: Text(
        //     title,
        //     style: TextStyle(
        //       fontSize: 18,
        //       fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        //       color: isSelected ? Colors.black : Colors.grey.shade600,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}

// import 'package:cage/fonts/fonts.dart';
// import 'package:cage/res/components/app_color.dart';
// import 'package:cage/res/components/button.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class RoleSelectorView extends StatelessWidget {
//   const RoleSelectorView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.black,
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Select your role",
//               style: TextStyle(
//                 fontSize: 28,
//                 fontFamily: AppFonts.appFont,
//                 color: AppColor.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             Text(
//               "Choose your role to continue and personalize your experience.",
//               style: TextStyle(
//                 fontFamily: AppFonts.appFont,
//                 color: AppColor.white,
//                 fontWeight: FontWeight.w100,
//               ),
//             ),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     border: BoxBorder.all(color: AppColor.red),
//                     borderRadius: BorderRadius.circular(22),
//                     color: AppColor.black,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       children: [
//                         SvgPicture.asset("assets/icons/boxing.svg"),
//                         Text(
//                           "I’m a Fighter",
//                           style: TextStyle(
//                             fontFamily: AppFonts.appFont,
//                             color: AppColor.white,
//                             fontWeight: FontWeight.w100,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     border: BoxBorder.all(color: AppColor.red),
//                     borderRadius: BorderRadius.circular(22),
//                     color: AppColor.black,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Column(
//                       children: [
//                         SvgPicture.asset("assets/icons/boxing.svg"),
//                         Text(
//                           "I’m a Fighter",
//                           style: TextStyle(
//                             fontFamily: AppFonts.appFont,
//                             color: AppColor.white,
//                             fontWeight: FontWeight.w100,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),

//             Button(text: "Continue", onTap: () {}),
//           ],
//         ),
//       ),
//     );
//   }
// }
