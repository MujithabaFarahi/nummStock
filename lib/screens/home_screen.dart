import 'package:flutter/material.dart';

import 'package:numm/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Home',
      ),
      body: Center(child: Text('Home Page')),
    );
  }
}
