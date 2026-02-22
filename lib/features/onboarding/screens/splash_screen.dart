import 'package:flutter/material.dart';
import 'dart:async';
import 'package:assignment/features/onboarding/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
        
          Positioned(
            top: -100,
            right: -100,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(
                      0xFF5669FF,
                    ).withValues(alpha: 0.2), 
                    const Color(0xFF5669FF).withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
        
          Positioned(
            bottom: -150,
            left: -80,
            child: Container(
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFF5669FF).withValues(alpha: 0.15),
                    const Color(0xFF5669FF).withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
         
          Positioned(
            top: -80,
            left: -80,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Colors.pinkAccent.withValues(alpha: 0.1),
                    Colors.pinkAccent.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
         
          Center(
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 1500),
              curve: Curves.elasticOut,
              builder: (context, value, child) {
                return Transform.scale(
                  scale: value,
                  child: Opacity(
                    opacity: value.clamp(0.0, 1.0),
                    child: Image.asset('assets/Group 34056.png', width: 250),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
