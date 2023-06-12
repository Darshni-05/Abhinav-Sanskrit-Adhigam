import 'package:google_fonts/google_fonts.dart';
import 'package:sanskrit/components/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:sanskrit/quiz.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Act(),
    );
  }
}
class Act extends StatefulWidget {
  @override
  _ActState createState() => _ActState();
}
class _ActState extends State<Act>
    with SingleTickerProviderStateMixin {
  late AnimationController
  iconController; // make sure u have flutter sdk > 2.12.0 (null safety)
  bool isAnimated = false;
  bool showPlay = true;
  bool shopPause = false;

  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    iconController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    audioPlayer.open(Audio('assets/sound/test.mp3'),autoStart: false,showNotification: true);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Act 1, Scene 1", style: GoogleFonts.bitter(),),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Image.asset("assets/images/Arjun.jpeg")),
              //SizedBox(height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: InkWell(child: Icon(CupertinoIcons.backward_fill),onTap: (){
                        audioPlayer.seekBy(Duration(seconds: -10));
                      },),
                    ),
                    GestureDetector(
                      onTap: () {
                        AnimateIcon();
                      },
                      child: AnimatedIcon(
                        icon: AnimatedIcons.play_pause,
                        progress: iconController,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
                    InkWell(child: Icon(CupertinoIcons.forward_fill),onTap: (){
                      audioPlayer.seekBy(Duration(seconds: 10));
                      audioPlayer.seek(Duration(seconds: 10));
                      audioPlayer.next();
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: RichText(
                    text: TextSpan(
                      text: ''' 
             ************        उद्यानम्        ************     

अन्तरा : अये ! अपूर्वे ! त्वम् इदानीं कुत्र गच्छसि ?

अपूर्वा : हला अन्तरे ! अहम् इदानीम् ''',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'उद्यानं ',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                //print('The button is clicked!');
                                final snackBar = SnackBar(content: Text('Garden'));

                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              },
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            )
                        ),
                        TextSpan(text:
                            '''
गच्छामि ।
किं त्वं मया सह आगच्छसि ?
अन्तरा : कुत्र अस्ति उद्यानम् ?

अपूर्वा : मम ''',
                        ),
                        TextSpan(
                            text: 'गृहस्य समीपे ',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                //print('The button is clicked!');
                                final snackBar = SnackBar(content: Text('Near home'));

                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              },
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            )
                        ),
                        TextSpan(text:
                        '''
एव एकम् उद्यानम् अस्ति अहं तत्रैव गच्छामि

अन्तरा : तत्र किम अस्ति 

अपूर्वा : तत्र ''',
                        ),
                        TextSpan(
                            text: 'विविधाः महावृक्षाः ',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                //print('The button is clicked!');
                                final snackBar = SnackBar(content: Text('Various big trees'));

                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              },
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            )),
                        TextSpan(text:
                        '''
बालवृक्षाः सन्ति ।
तत्र वृक्षेषु विविधाः ''',
                        ),
                        TextSpan(
                            text: 'खगाः वसन्ति ।',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                //print('The button is clicked!');
                                final snackBar = SnackBar(content: Text('Birds live'));

                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              },
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              RoundedButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Quiz(),
                    ),
                  );
                },
                text: 'QUIZ',
              ),
            ],
          ),
        ));
  }
  void AnimateIcon() {
    setState(() {
      isAnimated = !isAnimated;
      if(isAnimated)
      {
        iconController.forward();
        audioPlayer.play();
      }else{
        iconController.reverse();
        audioPlayer.pause();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    iconController.dispose();
    audioPlayer.dispose();
    super.dispose();
  }
}