import 'package:flutter/material.dart';
import 'package:numm/routes.dart';
import 'package:numm/screens/splash_screen.dart';
import 'package:numm/theme/color_palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NUMM.LK',
      theme: ThemeData(
        fontFamily: 'Outfit',
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          surface: Colors.white,
          onSurface: ColorPalette.primaryTextColor,
          primary: Color.fromARGB(255, 18, 39, 144),
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Color.fromARGB(255, 56, 88, 255),
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(
              allowEnterRouteSnapshotting: false, // This solves your issue
            ),
          },
        ),
      ),
      home: const SplashScreen(),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}
