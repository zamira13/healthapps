import 'package:flutter/material.dart';

class CekJantungPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cek Detak Jantung'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Aksi ketika tombol ditekan
            print("Mulai mengukur detak jantung");
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.translate(
                offset: Offset(0, -150), // Menggeser tombol lebih jauh ke atas (Y axis)
                child: Image.asset(
                  'assets/image/detakjantung.png', // Ganti dengan path gambar detak jantung
                  width: 225, // Sesuaikan ukuran gambar
                  height: 225,
                  fit: BoxFit.cover, // Sesuaikan ukuran gambar agar terisi penuh
                ),
              ),
              Transform.translate(
                offset: Offset(0, -170), // Geser teks "MULAI" sedikit lebih ke atas
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'MULAI',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 0), // Spasi antara "MULAI" dan teks deskripsi
                    Text(
                      'Ketuk Untuk Mengukur',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
