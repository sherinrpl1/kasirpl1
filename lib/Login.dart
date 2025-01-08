import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final SupabaseClient supabase = Supabase.instance.client;

  //fungsi login dengan memverifikasi username dan password di supabase
  Future<void> _login() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    try{
      //Query untuk mendapatkan pengguna berdasarkan username
      final response = await supabase
      .from('user')
      .select('username, password') //pilih kolom username dan password
      .eq('username', username) // filter menggunakan username
      .single(); // ambil hanya satu hasil

      if (response != null && response['password'] == password) {
        // Jika password cocok
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: 
          Text(
            'Login berhasil!'
            ),
            ),
        );
        // Jika login berhasil maka akan di arahkan langsung ke halaman beranda
        Navigator.pushReplacement(
          context, 
          MaterialPageRoute(builder: (context) => BerandaPage()),
        );
      } else {
        //jika password salah
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Username atau password salah!')),
        );
      }
    } catch (e) {
      // jika terjadi kesalahan dalam query
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Terjadi kesalahan: $e'))
      );
    }
  }
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Arahkan ke halaman registrasi jika perlu
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text('Belum punya akun? Daftar di sini'),
            ),
          ],
        ),
      ),
    );
  }
}

class BerandaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
      ),
      body: Center(
        child: Text('Selamat datang di Beranda!'),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Akun'),
      ),
      body: Center(
        child: Text('Halaman Registrasi'),
      ),
    );
  }
}
