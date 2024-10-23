import 'package:flutter/material.dart';
import 'signup.dart';  // Import file signup.dart

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Gambar logo hati
              Image.asset(
                'assets/image/hati.png', // Pastikan gambar berada di lokasi yang benar
                width: 120,
              ),
              SizedBox(height: 20),
              // Judul aplikasi
              Text(
                'GOSEHAT!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40),
              // Tombol Sign Up
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman Sign Up saat tombol ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.redAccent,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              // Tombol Sign In
              OutlinedButton(
                onPressed: () {
                  // Aksi saat tombol Sign In ditekan (implementasikan logika disini)
                  // Misalnya, navigasi ke halaman Sign In
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.redAccent, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 18, color: Colors.redAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}