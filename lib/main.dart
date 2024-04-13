import 'package:flutter/material.dart';
import 'package:food_delivery/model/restaurant_model.dart';
import 'package:food_delivery/pages/login_page.dart';
import 'package:food_delivery/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      //theme provider
      ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      ),

      //restaurant provider
      ChangeNotifierProvider(
      create: (context) => Restaurant(),
      ),
    ],
    child: const MyApp(),
    )
    );
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: LoginPage(),
    );
  }
}