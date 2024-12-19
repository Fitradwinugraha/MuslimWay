import 'package:flutter/material.dart';
import 'package:myapp/screen/jadwal_sholat.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //delay
    Future.delayed(const Duration(seconds: 5), () {
      //redirect ke jadwal salat
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const JadwalSholatPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/MuslimWay.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            //loading
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
