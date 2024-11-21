import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Paket Lottie untuk animasi
import 'package:deboyy_tugas1/main.dart'; // Impor halaman utama setelah splash

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Menunggu 4 detik sebelum pindah ke halaman utama
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background hitam untuk splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animasi Lottie yang diambil dari file assets/plane.json
            Lottie.asset(
              'assets/deboyy.json', // Pastikan file plane.json ada di folder assets
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              'Welcome to Deboyy\'s App!',
              style: TextStyle(
                  fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
