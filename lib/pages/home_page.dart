import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text("H O M E"),
        centerTitle: true,
      ),
    );
  }
}