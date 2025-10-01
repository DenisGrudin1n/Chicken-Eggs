import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientProgressBar extends StatelessWidget {
  final double progress;

  const GradientProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Stack(
        children: [
          Container(
            width: (progress * 1.sw).clamp(0, 1.sw), // progress in pixels
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 43, 0),
                  Color.fromARGB(255, 255, 229, 0),
                ],
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          Center(
            child: Text(
              '${(progress * 100).toInt()}%',
              style: GoogleFonts.rubikMonoOne(
                fontSize: 24.sp,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
