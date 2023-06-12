import 'package:google_fonts/google_fonts.dart';
import 'package:sanskrit/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:sanskrit/Pages/Level.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sanskrit",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' CHOOSE YOUR LEVEL ! ', style: GoogleFonts.bitter(),),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundedButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Level(),
                    ),
                  );
                },
                text: 'Beginner',
              ),
              RoundedButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Level(),
                    ),
                  );
                },
                text: 'Intermediate',
              ),
              RoundedButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Level(),
                    ),
                  );
                },
                text: 'Advanced',
              ),
            ],
          ),
        ),
      ),
    );
  }
}