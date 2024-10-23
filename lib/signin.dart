import 'package:flutter/material.dart';
import 'homepage.dart'; // Import halaman HomePage
import 'signup.dart'; // Import halaman SignUpScreen

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/image/hati.png', // Gambar di atas teks
                height: 100,
              ),
              SizedBox(height: 20),
              Text(
                'Welcome!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke HomePage setelah login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Login'),
              ),
              SizedBox(height: 20),
              // Tambahkan teks untuk navigasi ke SignUpScreen
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum mempunyai akun?"),
                  TextButton(
                    onPressed: () {
                      // Navigasi ke SignUpScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text('Daftar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
