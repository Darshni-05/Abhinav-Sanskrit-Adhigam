import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanskrit/Screens/Login/login_screen.dart';
import 'package:sanskrit/Screens/Signup/components/background.dart';
import 'package:sanskrit/Screens/Signup/components/or_divider.dart';
import 'package:sanskrit/Screens/Signup/components/social_icon.dart';
import 'package:sanskrit/components/already_have_an_account_acheck.dart';
import 'package:sanskrit/components/rounded_button.dart';
import 'package:sanskrit/components/rounded_input_field.dart';
import 'package:sanskrit/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sanskrit/Pages/screen.dart';
import 'package:sanskrit/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: GoogleFonts.bitter(fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.deepOrangeAccent),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icons/Brahma.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen()
                ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
