import 'package:flutter/material.dart';
import 'package:kasirsherin/appsplash.dart';
import 'package:kasirsherin/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';



String supabeseUrl = "https://yuaujfqvcqgvnmddssiq.supabase.co";
String supabeseAnonKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl1YXVqZnF2Y3Fndm5tZGRzc2lxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzYyMzk3MTcsImV4cCI6MjA1MTgxNTcxN30.VhhD19fPb0wa9kG93dNIrr5LDcDnPerFKIHuacHe4bk";

void main() async {
//Inisialisasi supabese
await Supabase.initialize(
  url: 'https://yuaujfqvcqgvnmddssiq.supabase.co',
  anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl1YXVqZnF2Y3Fndm5tZGRzc2lxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzYyMzk3MTcsImV4cCI6MjA1MTgxNTcxN30.VhhD19fPb0wa9kG93dNIrr5LDcDnPerFKIHuacHe4bk',

);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chasier',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text('jhdhufhuf'),
//       ),
//       body: Center(
      
//         ),
//       );
//   }
// }