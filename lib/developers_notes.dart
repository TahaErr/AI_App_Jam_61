import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class DevelopersNotes extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  void _speak() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(
      "This application has been developed without any profit motive. It aims to help children learn about various objects. If you have any ideas, requests, or suggestions, please contact GAA(Game and app academy) Flutter Team 61.",
    );
    await flutterTts.awaitSpeakCompletion(true);
    await flutterTts.setLanguage("tr-TR");
    await flutterTts.speak(
      "Bu uygulama hiçbir kar gözetmeksizin geliştirilmiştir. Çocukların çeşitli nesneleri öğrenmelerine yardımcı olmayı amaçlar. Fikir, istek ve önerileriniz için OUA Flutter 61. Ekip ile iletişime geçebilirsiniz.",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer's Notes"),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/happy.png', // Path to your image
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "This application has been developed without any profit motive. It aims to help children learn about various objects. If you have any ideas, requests, or suggestions, please contact GAA(Game and app academy) Flutter Team 61.",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Bu uygulama hiçbir kar gözetmeksizin geliştirilmiştir. Çocukların çeşitli nesneleri öğrenmelerine yardımcı olmayı amaçlar. Fikir, istek ve önerileriniz için OUA Flutter 61. Ekip ile iletişime geçebilirsiniz.",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Version 1.1",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: _speak,
                      child: Text("Listen to Developer's Notes"),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
