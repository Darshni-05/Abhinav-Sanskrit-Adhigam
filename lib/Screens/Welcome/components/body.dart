
import 'package:flutter/material.dart';
import 'package:sanskrit/Screens/Login/login_screen.dart';
import 'package:sanskrit/Screens/Signup/signup_screen.dart';
import 'package:sanskrit/Screens/Welcome/components/background.dart';
import 'package:sanskrit/components/rounded_button.dart';
import 'package:sanskrit/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 100,),
                Center(

                  child: Text(
                    // 'अभिनव संस्कृत अधिगम\n\n'
                        ' Abhinav Sanskrit Adhigam',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.shojumaru(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      color: Colors.deepOrange,
                    ),
                  ),

                ),
                SizedBox(height: size.height * 0.05),
                Image.asset(
                  "assets/icons/Krishna.png",
                  height: size.height * 0.45,
                ),
                SizedBox(height: size.height * 0.05),
                Container(
                  width: 320,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryLightColor,
                      onPrimary: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      child: Text(
                        "LOGIN",
                        style: GoogleFonts.bitter(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 15 ,),
                Container(
                  width: 320,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpScreen();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryLightColor,
                      onPrimary: Colors.black,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),

                      ),
                    ),
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.bitter(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
