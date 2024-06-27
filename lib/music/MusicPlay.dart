import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../comnWidget/CustomBottomSheet.dart';

class MusicPlay extends StatefulWidget {
  const MusicPlay({Key? key}) : super(key: key);

  @override
  _MusicPlayState createState() => _MusicPlayState();
}

class _MusicPlayState extends State<MusicPlay> {
  late AudioPlayer audioPlayer;
  late AudioCache audioCache;
  Duration _duration = Duration();
  Duration _position = Duration();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: audioPlayer);

    audioPlayer.onDurationChanged.listen((Duration duration) {
      setState(() {
        _duration = duration;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((Duration position) {
      setState(() {
        _position = position;
      });
    });

    audioPlayer.onPlayerStateChanged.listen((PlayerState state) {
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });
  }

  void toggleSound() async {
    if (isPlaying) {
      await audioPlayer.pause();
    } else {
      await audioCache.play('audio/sample.mp3'); // Replace with your audio file
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void stopSound() async {
    await audioPlayer.stop();
    setState(() {
      isPlaying = false;
      _position = Duration(seconds: 0);
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    audioPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    double sliderHeight = screenSize.height * 0.3;
    double buttonContainerHeight = screenSize.height * 0.15;

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          toggleSound();
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/flutterLogo.png'),
                  alignment: Alignment.topCenter / 1.6,
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 20,
              child: IconButton(
                onPressed: () => {
                  print('창 다시 내리기')
                },
                icon: Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 40,),
              ),
            ),
            Positioned(
              top: 30,
              left: 20,
              child: Title(
                color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.black87,
                        padding: EdgeInsets.only(top: 2,bottom: 2,left: 5,right: 5),
                        child: Text(
                          '공공구 - 회색도시',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Nunito',
                              color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.black87,
                        margin: EdgeInsets.only(top:6),
                        padding: EdgeInsets.only(top: 2,bottom: 2,left: 5,right: 5),
                        child: Text(
                          'admin',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Nunito',
                            color: Colors.white
                          ),
                        ),
                      ),
                    ],
                  )

              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenSize.height * 0.4), // Example: 10% of screen height
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: sliderHeight,
                    child: Slider(
                      value: _position.inSeconds.toDouble(),
                      min: 0.0,
                      max: _duration.inSeconds.toDouble(),
                      onChanged: (double value) {
                        seekToSecond(value.toInt());
                      },
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.15), // Example: 5% of screen height
                  Container(
                    height: buttonContainerHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () => {
                            print('123')
                          },
                          icon: Icon(Icons.favorite_border, color: Colors.black),
                        ),
                        Icon(Icons.add),
                        IconButton(
                          onPressed: () => {
                            print('123')
                          },
                          icon: Icon(Icons.list_sharp, color: Colors.black),
                        ),
                        IconButton(
                          onPressed: () => {
                            print('123')
                          },
                          icon: Icon(Icons.more_horiz_sharp, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
