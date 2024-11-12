import 'package:flutter/material.dart';
import 'package:numm/widgets/appbar.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Add Item',
      ),
      body: Center(
        child: Text('Add Item'),
      ),
    );
  }
}
