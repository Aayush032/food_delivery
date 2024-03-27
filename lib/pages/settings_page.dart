import 'package:flutter/material.dart';
import 'package:food_delivery/theme/theme_provider.dart';
import 'package:food_delivery/widgets/custom_drawer.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text("S E T T I N G S"),
        centerTitle: true,
        leading: IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: const Icon(Icons.arrow_back))
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark Mode", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Theme.of(context).colorScheme.inversePrimary),),
                Switch(
                 // activeColor: const Color.fromARGB(255, 57, 129, 94),
                  value: Provider.of<ThemeProvider>(context).isDarkMode,
                 onChanged: (value){
                    Provider.of<ThemeProvider>(context,listen: false).toggleTheme();
                 })
              ],
            ),
          )
        ]),
    );
  }
}