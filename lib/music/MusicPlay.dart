import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicPlay extends StatefulWidget {
  const MusicPlay({super.key});

  @override
  State<MusicPlay> createState() => _MusicPlayState();
}

class _MusicPlayState extends State<MusicPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('test'),
      ),
    );
  }
}
