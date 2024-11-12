import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numm/theme/color_palette.dart';
import 'package:numm/widgets/primary_button.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/landingbg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.2),
                  Colors.white,
                ],
                stops: const [
                  0,
                  0.5,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // SvgPicture.asset('assets/icons/logomain.svg'),
                Column(
                  children: [
                    const SizedBox(
                      height: 42,
                    ),
                    const Text(
                      'Discover the art of living beautifully ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text(
                        'with ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Livespace.AI',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorPalette.mainPurple[400],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Welcome! Discover your dream space with AI-powered design. Effortless, personalized interiors at your fingertips.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: ColorPalette.mainGray[600]!,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 42, horizontal: 10),
                      child: Column(
                        children: [
                          PrimaryButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                '/home',
                              );
                            },
                            text: 'Explore Designs',
                          ),
                          const SizedBox(height: 12),
                          PrimaryButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                '/explore',
                              );
                            },
                            text: 'Explore Designs',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
