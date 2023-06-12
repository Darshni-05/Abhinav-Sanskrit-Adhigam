import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanskrit/Badges/6.dart';
import 'package:sanskrit/Badges/4.dart';


class Five extends StatelessWidget {
  const Five({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children:<Widget>[

              Container(
                height: 750,
                width: 500,

                decoration: BoxDecoration(
                    image:DecorationImage(
                        image: AssetImage('assets/5.jpeg'),
                        fit: BoxFit.contain
                    )
                ),
              ),
              Container(
                  padding: EdgeInsets.all(60.0),
                  alignment:Alignment.topCenter,
                  child:Text(
                      'Vishuddhaa',
                      style:TextStyle(
                          fontSize:37.0,
                          fontFamily: ('VesperLibre')
                      )
                  )
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(15.0,175.0,15.0,0.0),
                  //alignment:Alignment.topCenter,
                  child:Text(
                      'The Vishuddhaa, or throat chakra, gives voice to the heart chakra and controls our ability to communicate our personal power. when it\'s funtioning at full capacity, it allows us to express ourselves truly and clearly.  ',
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
                        builder: (context) => Four(),
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
                        builder: (context) => Six(),
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