import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
            height: 1.sh,
          ),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Image.asset('assets/images/chicken.png', height: 0.7.sh),
            ),
          ),
          Positioned(
            top: 40.h,
            left: 25.w,
            child: Image.asset('assets/images/info.png', height: 80.h),
          ),
          Positioned(
            top: 40.h,
            right: 25.w,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/menu'),
              child: Image.asset('assets/images/menu.png', height: 80.h),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 0.1.sh),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/button.png', height: 140.h),
                  // Stroke
                  Text(
                    'PLAY',
                    style: GoogleFonts.rubikMonoOne(
                      fontSize: 54.sp,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = const Color.fromARGB(255, 157, 49, 3),
                    ),
                  ),
                  // Fill
                  Text(
                    'PLAY',
                    style: GoogleFonts.rubikMonoOne(
                      fontSize: 54.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
