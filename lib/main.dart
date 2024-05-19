import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:MDWT/cam_codes.dart';
import 'package:MDWT/screen_codes.dart';
import 'package:MDWT/developers_notes.dart';

late List<CameraDescription>?cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CameraApp',
      initialRoute: "splash",
      routes: {
        "splash": (context) => const SplashScreen(),
        "main_screen": (context) => const ScanController(),
        "developers_notes": (context) => DevelopersNotes(),
      },
    );
  }
}
