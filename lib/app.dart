import 'package:chicken_eggs/screens/loading_screen.dart';
import 'package:chicken_eggs/screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932), // example for iPhone 14 Pro Max
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chicken-Eggs Game',
          theme: ThemeData.dark(),
          home: const LoadingScreen(),
          routes: {'/menu': (context) => const MenuScreen()},
        );
      },
    );
  }
}
