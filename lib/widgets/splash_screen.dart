import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:viinon/gen/colors.gen.dart';
import 'package:viinon/screens/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _coffeeController;
  bool copAnimated = false;
  bool animateCafeText = false;
  bool showAnimation = true;
  @override
  void initState() {
    super.initState();
    _coffeeController = AnimationController(vsync: this);
    _coffeeController.addListener(() {
      if (_coffeeController.value > 0.7) {
        _coffeeController.stop();
        copAnimated = true;
        setState(() {});
        Future.delayed(const Duration(seconds: 1), () {
          animateCafeText = true;
          setState(() {});
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _coffeeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    if (showAnimation == false) {
      return const HomeScreen();
    } else {
      return Scaffold(
        backgroundColor: ColorName.primaryGreen,
        body: Stack(
          children: [
            // White Container top half
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: copAnimated ? screenHeight / 1.9 : screenHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Visibility(
                    visible: !copAnimated,
                    child: Lottie.asset(
                      'assets/animations/viinon1.json',
                      controller: _coffeeController,
                      onLoaded: (composition) {
                        _coffeeController
                          ..duration = composition.duration
                          ..forward();
                      },
                    ),
                  ),
                  Visibility(
                    visible: copAnimated,
                    child: Image.asset(
                      'assets/animations/viinon2.png',
                      height: 190.0,
                      width: 190.0,
                    ),
                  ),
                ],
              ),
            ),
            // Text bottom part
            Visibility(visible: copAnimated, child: const _BottomPart()),
          ],
        ),
      );
    }
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Avec vous pour un allaitement serein',
              style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Dédié à la lactation et au bien être après le post-partum,'
              ' VIINON aide les mamans, spécialement celles qui travaillent,'
              ' à pouvoir allaité leurs enfants aussi longtemps qu’elles le souhaitent.',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white.withOpacity(0.8),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 50.0),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/slider', (Route<dynamic> route) => false);
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2.0),
                  ),
                  child: const Icon(
                    Icons.chevron_right,
                    size: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50.0),
          ],
        ),
      ),
    );
  }
}
