import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_complete/colors.dart';
import 'package:whatsapp_ui_complete/common/widgets/custum_button.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country _country) {
        setState(() {
          country = _country;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter your phone number"),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("WhatsApp will need to verify your phone number."),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                pickCountry();
              },
              child: const Text("Pick Country"),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                country != null
                    ? Text("+${country!.phoneCode}")
                    : const Text(""),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: 'Phone Number',
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: size.height * 0.6,
            // ),
            const Spacer(),
            SizedBox(
              width: 90,
              child: CustumButton(
                text: 'NEXT',
                onPress: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
