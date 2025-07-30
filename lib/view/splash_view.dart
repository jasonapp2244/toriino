import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getxmvvm/resources/colors/app_colors.dart';
import 'package:getxmvvm/resources/routes/routes_name.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(milliseconds: 500));
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(
        context,
        // MaterialPageRoute(builder: (_) => Loginview()
        // ),
        RoutesName.loginview
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initialize responsive values
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final iconSize = screenWidth * 0.6; // 60% of screen width

    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/Frame 1.svg",
                fit: BoxFit.contain,
              ),
              SizedBox(height: screenHeight * 0.02),

              SvgPicture.asset(
                "assets/images/TORIINO.svg",
                fit: BoxFit.contain,
              ),

              SizedBox(height: screenHeight * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get_utils/get_utils.dart';
// import 'package:getxmvvm/viewmodel/services/splash_services.dart';

// class SplashView extends StatefulWidget {
//   const SplashView({super.key});

//   @override
//   State<SplashView> createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashView> {
//   SplashServices splashServices = SplashServices();

//   @override
//   void initState() {
//     super.initState();
//     splashServices.isLogin();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("title".tr)),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [Center(child:
//         SvgPicture.asset("assets/images/Frame 1.svg")
//         //  Text("Welcome_Massage".tr)
//          )],
//       ),
//     );
//   }
// }
