import 'package:flutter/material.dart';
import 'dart:async';
import 'package:kasirsherin/Login.dart'; // Untuk fungsi delay

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kasir sherin',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Tampilkan Splash Screen pertama kali
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Fungsi untuk mengarahkan ke halaman utama setelah delay
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      // Ganti ke halaman utama setelah 3 detik
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100], // Warna background splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset("asset/logo kasir.png",
           width: 150,
           height: 150,
           ),
            SizedBox(height: 20),
            Text(
              'SMARTCELIN APP',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}