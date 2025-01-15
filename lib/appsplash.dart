import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:kasirsherin/login.dart';
import 'package:kasirsherin/welcome.dart'; // Untuk fungsi delay

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
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Warna background splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset("asset/logo2.png",
           width: 300,
           height: 300,
           ),
            // Text(
            //   'SMARTCELIN APP',
            //   style: GoogleFonts.acme(
            //     textStyle: TextStyle(color: Colors.blue[900],
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //     ),
            //   ),
            //   // style: TextStyle(
            //   //   color: Colors.blue[900],
            //   //   fontSize: 24,
            //   //   fontWeight: FontWeight.bold,
            //   // ),
            // ),
          ],
        ),
      ),
    );
  }
}
