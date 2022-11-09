import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_complete/colors.dart';
import 'package:whatsapp_ui_complete/features/landing/screens/landing_screen.dart';
import 'package:whatsapp_ui_complete/firebase_options.dart';
import 'package:whatsapp_ui_complete/responsive/responsive_layout.dart';
import 'package:whatsapp_ui_complete/router.dart';
import 'package:whatsapp_ui_complete/screens/mobile_layout_screen.dart';
import 'package:whatsapp_ui_complete/screens/web_layout_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: appBarColor,
        ),
      ),
      onGenerateRoute: (Settings) => generateRoute(Settings),
      home: const LandingScreen(),
      // const ResponsiveLayout(
      //   mobileScreenLayout: MobileLayoutScreen(),
      //   webScreenLayout: WebLayoutScreen(),
      // ),
    );
  }
}
