import 'package:flutter/material.dart';
import 'package:flutter_booky_1/constants.dart';
import 'package:flutter_booky_1/core/utils/assets.dart';
import 'package:flutter_booky_1/features/home/views/home_view.dart';
import 'package:flutter_booky_1/features/splash/Presentation/views/widgets/sliding_text.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeVIew(),
          transition: Transition.fade, duration: kTransitionDuration);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage(AssetsData.logo),
          backgroundColor: kPrimarycolor,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(
          seconds: 1,
        ));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }
}
