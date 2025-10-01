import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

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
          Positioned(
            top: 40.h,
            left: 25.w,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset('assets/images/back.png', height: 80.h),
            ),
          ),
          Positioned(
            bottom: 50.h,
            left: 25.w,
            right: 25.w,
            child: SizedBox(
              height: 0.73.sh,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/purple_rectangle.png',
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25.h, bottom: 20.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'MENU',
                          style: GoogleFonts.rubikMonoOne(
                            fontSize: 36.sp,
                            color: Colors.white,
                          ),
                        ),
                        _buildMenuButton('PROFILE', 17),
                        _buildMenuButton('SETTINGS', 16),
                        _buildMenuButton('LEADERBOARD', 11.5),
                        _buildMenuButton('PRIVACY\nPOLICY', 15),
                        _buildMenuButton('TERM\nOF USE', 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 50.h,
            right: 25.w,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/coin_count_rectangle.png',
                      height: 35.h,
                    ),
                    Row(
                      children: [
                        Text(
                          '14',
                          style: GoogleFonts.rubikMonoOne(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 25.w),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 85.w),
                    Image.asset('assets/images/coin.png', height: 60.h),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuButton(String text, double fontSize) {
    return Center(
      child: SizedBox(
        height: 80.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/button.png', height: 80.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: AutoSizeText(
                text,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: GoogleFonts.rubikMonoOne(
                  fontSize: fontSize,
                  color: Colors.white,
                ),
                minFontSize: 6,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
