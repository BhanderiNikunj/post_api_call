import 'package:flutter/material.dart';
import 'package:post_api_call/Screen/Home/Provider/HomeProvider.dart';
import 'package:post_api_call/Screen/Home/View/HomeScreen.dart';
import 'package:post_api_call/Screen/Sples/View/SplesScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => const SplesScreen(),
          'home': (context) => const HomeScreen(),
        },
      ),
    ),
  );
}
