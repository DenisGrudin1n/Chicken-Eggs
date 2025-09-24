import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/gradient_progress_bar.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
      _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5), 
    )..forward();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/menu');
    });
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            alignment: Alignment.bottomCenter,
            child: Image.asset(
                  'assets/images/chicken.png',
                  height: 0.95.sh,
                ),
          ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 40.w, right: 40.w, bottom: 0.1.sh),
                  child: AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return GradientProgressBar(progress: _controller.value);
                    },
                  ),
                ),
            ),
        
        ],
      ),
    );
  }
}
