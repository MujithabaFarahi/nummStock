import 'package:flutter/material.dart';
import 'package:numm/widgets/appbar.dart';

class ViewSales extends StatelessWidget {
  const ViewSales({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'View Orders',
      ),
      body: Center(
        child: Text('Sales'),
      ),
    );
  }
}
