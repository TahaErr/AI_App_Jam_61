import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay before navigating to the main screen
    Future.delayed(const Duration(seconds: 5), () { // 5 saniye yapıldı
      Navigator.pushReplacementNamed(context, 'main_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              'assets/splash_image.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 50, // Yazının üstten uzaklığı
              left: 0,
              right: 0,
              child: Text(
                'MOM, DAD WHAT IS THAT?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepPurple, // Rengi açık yeşil yapıldı
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
