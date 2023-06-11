import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../routes/name_pages.dart';
import '../utils/assets_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _esInicio = true;
  @override
  Future<void> didChangeDependencies() async {
    if (_esInicio) {
      await Future<void>.delayed(const Duration(seconds: 3));
      setState(() {
        _esInicio = false;
      });
      Get.offNamed(nameHomeScreen);
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: Get.width * 0.6,
            child: Lottie.asset(
              AssetsUtils.splashAnimation,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
    );
  }
}
