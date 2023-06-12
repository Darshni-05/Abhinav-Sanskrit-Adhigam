import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanskrit/Badges/7.dart';
import 'package:sanskrit/Badges/5.dart';



class Six extends StatelessWidget {
  const Six({Key? key}) : super(key: key);

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
                        image: AssetImage('assets/6.jpeg'),
                        fit: BoxFit.contain
                    )
                ),
              ),
              Container(
                  padding: EdgeInsets.all(60.0),
                  alignment:Alignment.topCenter,
                  child:Text(
                      'Ajna',
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
                      'As we move up the body, we\'re getting closer to communion with the divine. The ajna, or third-eye chakra, controls our ability to see the big picture and connect to intuition. think of it as the ye of the soul. It registers information beyond the surface level.',
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
                        builder: (context) => Five(),
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
                        builder: (context) => Seven(),
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