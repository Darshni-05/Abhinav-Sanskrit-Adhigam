import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanskrit/Badges/2.dart';
import 'package:sanskrit/HOME.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children:<Widget>[
              Container(
                height: 700,
                width: 400,

                decoration: BoxDecoration(
                    image:DecorationImage(
                        image: AssetImage('assets/1.jpeg'),
                        fit: BoxFit.contain
                    )
                ),
              ),
              Container(
                  padding: EdgeInsets.all(60.0),
                  alignment:Alignment.topCenter,
                  child:Text(
                      'Muladhara',
                      style:TextStyle(
                          fontSize:37.0,
                          fontFamily: ('VesperLibre')
                      )
                  )
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(15.0,200.0,15.0,0.0),
                  //alignment:Alignment.topCenter,
                  child:Text(
                      'The Root Chakra is named Muladhara in sanskrit. The Root Chakra is the first of our energy centers and forms the basis and the staring point for our development.',
                      textAlign:TextAlign.center,
                      style:TextStyle(
                          fontSize:27.0,
                          fontFamily: ('VesperLibre')

                      )

                  )
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 40.0),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dash(),
                      ),
                    );
                  },
                  child: Text('Back',
                      style: TextStyle(
                          fontSize:27.0,
                          fontFamily: ('VesperLibre')
                      ) ),
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                      shape: StadiumBorder(),
                    primary: Colors.white,
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 40.0),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Two(),
                      ),
                    );
                  },
                  child: Text('Next',
                      style: TextStyle(
                          fontSize:27.0,
                          fontFamily: ('VesperLibre')
                      ) ),
                  style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(45, 10, 45, 10),
                      shape: StadiumBorder(),
                    primary: Colors.white,
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}