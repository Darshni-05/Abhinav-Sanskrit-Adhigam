import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanskrit/HOME.dart';

class Seven extends StatelessWidget {
  const Seven({Key? key}) : super(key: key);

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
                        image: AssetImage('assets/7.jpeg'),
                        fit: BoxFit.contain
                    )
                ),
              ),
              Container(
                  padding: EdgeInsets.all(60.0),
                  alignment:Alignment.topCenter,
                  child:Text(
                      'Sahasrara',
                      style:TextStyle(
                          fontSize:37.0,
                          fontFamily: ('VesperLibre')
                      )
                  )
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(15.0,165.0,15.0,0.0),
                  //alignment:Alignment.topCenter,
                  child:Text(
                      'The Sahasrara, or crown chakra, the highest chakra sits at the crown of the head and represents our abilityto be fully connected spiritually. When you fully open your crown chakra something very few people ever do! you\'re able to access a higher consciousness.  ',
                      textAlign:TextAlign.center,
                      style:TextStyle(
                          fontSize:25.0,
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

            ],
          ),
        )
    );
  }
}