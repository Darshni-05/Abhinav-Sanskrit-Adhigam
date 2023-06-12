import 'package:flutter/material.dart';
import 'package:sanskrit/Screens/Login/components/background.dart';
import 'package:sanskrit/Screens/Signup/signup_screen.dart';
import 'package:sanskrit/components/already_have_an_account_acheck.dart';
import 'package:sanskrit/components/rounded_button.dart';
import 'package:sanskrit/components/rounded_input_field.dart';
import 'package:sanskrit/components/rounded_password_field.dart';
import 'package:sanskrit/Pages/screen.dart';
import 'package:sanskrit/HOME.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanskrit/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: GoogleFonts.bitter(fontWeight: FontWeight.bold, fontSize: 36,
              color: Colors.deepOrangeAccent),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icons/Ram.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: EdgeInsets.only(left:40, right: 40, bottom: 10),
              child: TextField(

                onChanged: (value) {
                  // Handle the onChanged event here
                },
                decoration: InputDecoration(
                  hintText: "Your Email",
                  hintStyle: GoogleFonts.bitter(
                    color: Colors.black,
                    //fontStyle: FontStyle.italic,
                  ),
                  filled: true,
                  fillColor: kPrimaryLightColor,
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:40, right: 40, bottom: 10),
              child: TextField(

                onChanged: (value) {
                  // Handle the onChanged event here
                },
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: GoogleFonts.bitter(
                    color: Colors.black,
                    //fontStyle: FontStyle.italic,
                  ),
                  filled: true,
                  fillColor: kPrimaryLightColor,
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,MaterialPageRoute(
    builder: (context) {
    return Dash();
    },
    ),
    );
  },
  style: ElevatedButton.styleFrom(
  primary: kPrimaryColor,
  onPrimary: Colors.black,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(30),
  ),
  ),
  child: Padding(
  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
  child: Text(
  "LOGIN",
  style: GoogleFonts.bitter(
  textStyle: TextStyle(
  fontSize: 20,
  color: Colors.white,
  fontWeight: FontWeight.bold,
  ),
  ),
  ),
  ),
  ),
            ),








  SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
