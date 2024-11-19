
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:video_player_applicaton/provider/video_provider.dart';
import 'package:video_player_applicaton/screens/splash/splash_screen.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ShareProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LikeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}