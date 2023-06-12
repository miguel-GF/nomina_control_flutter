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

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Lottie.asset(
            AssetsUtils.splashAnimation,
            controller: _controller,
            height: Get.width * 0.6,
            animate: true,
            onLoaded: (LottieComposition composition) {
              _controller
                ..duration = composition.duration
                ..forward().whenComplete(() => Get.offNamed(nameHomeScreen));
            },
          ),
        ),
      ),
    );
  }
}
