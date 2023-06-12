import 'package:flutter/material.dart';
import 'components/rounded_button.dart';
import 'HOME.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz !"),
        backgroundColor: Colors.amber,
      ) ,
      body: Center(
        child: RoundedButton(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Dash(),
              ),
            );
          },
          text: 'Back to Dashboard',
        ),

              ),
      );
  }
}
