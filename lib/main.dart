import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded build_buttons({required int buttonNumber, required Color color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color, // Setting the background color
        ),
        onPressed: () {
          playSound(buttonNumber);
        },
        child: Container(), // You can add text or leave it empty
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              build_buttons(buttonNumber: 1, color: const Color.fromARGB(255, 210, 55, 44)),
              build_buttons(buttonNumber: 2, color: const Color.fromARGB(255, 238, 170, 67)),
              build_buttons(buttonNumber: 3, color: const Color.fromARGB(255, 248, 228, 49)),
              build_buttons(buttonNumber: 4, color: const Color.fromARGB(255, 61, 170, 65)),
              build_buttons(buttonNumber: 5, color: const Color.fromARGB(255, 56, 135, 201)),
              build_buttons(buttonNumber: 6, color: const Color.fromARGB(255, 53, 73, 185)),
              build_buttons(buttonNumber: 7, color: const Color.fromARGB(255, 195, 36, 224)),
            ],
          ),
        ),
      ),
    );
  }
}
