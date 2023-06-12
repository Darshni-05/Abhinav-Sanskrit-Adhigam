import 'package:flutter/material.dart';
import 'components/rounded_button.dart';
import 'Pages/screen.dart';
import 'Badges/1.dart';

class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' DASHBOARD'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: RoundedButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen(),
                    ),
                  );
                },
                text: 'LEVELS',
              ),
            ),
            Expanded(
              child: RoundedButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => One(),
                    ),
                  );
                },
                text: 'Badges',
              ),
            ),
            Expanded(
              child: RoundedButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Dash(),
                    ),
                  );
                },
                text: 'Settings',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
