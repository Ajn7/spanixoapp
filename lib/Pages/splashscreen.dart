import 'package:flutter/material.dart';
import 'package:flutter_ripple_animation/packages.dart';
import 'package:flutter_ripple_animation/ripple_animation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spanixoapp/Config/AppConfig.dart';
import 'package:spanixoapp/Pages/homescreen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/SplashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with WidgetsBindingObserver {
  bool _initDone = false;
  _initApp(BuildContext context) async {
    try {
      Future.delayed(const Duration(seconds: 5), () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      });
    } catch (e) {
      debugPrint('error $e');
    }
    _initDone = true;
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 2)).then((_) {
    if (_initDone == false) {
      _initApp(context);
    }
    // });

    return Scaffold(
      backgroundColor: AppConfig.colorBasic100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 350.h,
              child: RipplesAnimation(
                size: 500.h,
                color: AppConfig.blue,
                child: Icon(
                  Icons.food_bank,
                  size: 250.h,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Initializing..Please wait",
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: AppConfig.colorSuccess),
            ),
          ],
        ),
      ),
    );
  }
}
