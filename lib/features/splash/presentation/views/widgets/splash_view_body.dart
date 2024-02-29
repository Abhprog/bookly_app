import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../home/presentation/views/home_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
} // SplashViewBody

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    // each of the following two methods have their own roles,
    // (without writing code dirctly in intiState() function),
    // this is so called [Single Responsibility Principle]
    initSlidingAnimation();
    navigateToHomePage();
  } // initState()

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  } // dispose()

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  } // initSlidingAnimation()

  void navigateToHomePage() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
              pageBuilder: (_, __, ___) => const HomeView(),
              transitionDuration: kPageTransitionDuration,
              transitionsBuilder: (_, a, __, c) {
                // const begin = Offset(0.0, 1.0);
                // const end = Offset.zero;
                // final tween = Tween(begin: begin, end: end);
                // final offsetAnimation = a.drive(tween);
                // return SlideTransition(
                //   position: offsetAnimation,
                //   child: c,
                // );
                return FadeTransition(opacity: a, child: c);
              }));
    });
  } // navigateToHomePage()

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Image.asset(AssetsData.logo),
          const SizedBox(height: 10),
          SlideTransition(
              position: slidingAnimation,
              child: const Text(
                'Read Free Books',
                textAlign: TextAlign.center,
              ))
        ]));

    // TweenAnimationBuilder(
    //       builder: (BuildContext context, Object? value, Widget? child) {
    //     return SlideTransition(
    //         position: slidingAnimation,
    //         child:
    //             const Text('Read Frnullee Books', textAlign: TextAlign.center));
    //   }, tween: null, duration: , null)
  } // build()
} // SplashViewBody
