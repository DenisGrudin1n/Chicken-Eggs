import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/chicken.png',
                  height: 320.h, 
                ),
                SizedBox(height: 50.h),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 20.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                  child: Text(
                    "PLAY",
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 40.h,
            left: 20.w,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info, size: 36),
            ),
          ),
          Positioned(
            top: 40.h,
            right: 20.w,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, size: 36),
            ),
          ),
        ],
      ),
    );
  }
}
