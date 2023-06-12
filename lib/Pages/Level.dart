import 'package:google_fonts/google_fonts.dart';
import 'package:sanskrit/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'Act.dart';

class Level extends StatelessWidget {
  const Level({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choose your level ! ',
      home: choose_level(),
    );
  }
}

class choose_level extends StatefulWidget {
  const choose_level({Key? key}) : super(key: key);

  @override
  _choose_levelState createState() => _choose_levelState();
}

class _choose_levelState extends State<choose_level> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' CHOOSE YOUR ACT ! ',
        style: GoogleFonts.bitter(),),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex:3,
              child: RoundedButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Act(),
                    ),
                  );
                },
                text: 'ACT 1',
              ),
            ),
            Expanded(
              child: RoundedButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Act(),
                    ),
                  );
                },
                text: 'ACT 2',
              ),
            ),
            Expanded(
              child: RoundedButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Act(),
                    ),
                  );
                },
                text: 'ACT 3',
              ),
            ),
            Expanded(
              child: RoundedButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Act(),
                    ),
                  );
                },
                text: 'ACT 4',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
