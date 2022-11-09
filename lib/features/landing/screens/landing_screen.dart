import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_complete/colors.dart';
import 'package:whatsapp_ui_complete/common/widgets/custum_button.dart';
import 'package:whatsapp_ui_complete/features/auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    void NavigateToLiginScreen(BuildContext context) {
      Navigator.pushNamed(context, LoginScreen.routeName);
    }

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Bienvenu sur WhatsApp",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 33,
              ),
            ),
            SizedBox(
              height: size.height / 9,
            ),
            Image.asset(
              'assets/bg.png',
              height: 340,
              width: 340,
              color: tabColor,
            ),
            SizedBox(
              height: size.height / 9,
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
                style: TextStyle(color: greyColor),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width * 0.80,
              child: CustumButton(
                text: 'AGREE AND CONTINUE',
                onPress: () => NavigateToLiginScreen(context),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
