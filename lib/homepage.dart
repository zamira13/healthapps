import 'package:flutter/material.dart';
import 'profile.dart'; // Mengimpor halaman ProfilePage
import 'about.dart'; // Mengimpor halaman AboutPage
import 'cekjantung.dart'; // Mengimpor halaman CekJantungPage

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.pinkAccent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Membuka Drawer
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Username"), // Nama pengguna
              accountEmail: null, // Jika tidak ingin menampilkan email
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person, // Avatar pengguna
                  size: 50.0,
                  color: Colors.black87,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.pinkAccent, // Warna background header
              ),
              otherAccountsPictures: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context); // Menutup drawer
                  },
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()), // Navigasi ke ProfilePage
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()), // Navigasi ke AboutPage
                );
              },
            ),
            Divider(), // Garis pemisah
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log Out'),
              onTap: () {
                // Aksi ketika item Log Out dipilih
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian Header
            Text(
              'Hallo username!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black, // Text color
                side: BorderSide(color: Colors.black12), // Border
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Rounded corner
                ),
              ),
              child: Text('Welcome'),
            ),
            SizedBox(height: 24),

            // Bagian "What are you looking for?"
            Text(
              'What are you looking for?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16),

            // Card Cek Detak Jantung dengan navigasi ke CekJantungPage
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CekJantungPage()), // Navigasi ke CekJantungPage
                );
              },
              child: Container(
                height: 133, // Tinggi card
                width: double.infinity, // Lebar card sesuai dengan lebar halaman
                child: Card(
                  color: Color(0xFFDFF5F5), // Warna background card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/image/heartbeat.gif',
                          height: 70, // Sesuaikan tinggi gambar
                          width: 70,  // Sesuaikan lebar gambar
                        ),
                        SizedBox(width: 16), // Jarak antara gambar dan teks
                        Text(
                          'Cek Detak Jantung',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24), // Tambahkan lebih banyak ruang di antara card

            // Card Cek Suhu Tubuh
            Container(
              height: 133, // Tinggi card
              width: double.infinity, // Lebar card sesuai dengan lebar halaman
              child: Card(
                color: Color(0xFFDFF5F5), // Warna background card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image/temperature.gif',
                        height: 70, // Sesuaikan tinggi gambar
                        width: 70,  // Sesuaikan lebar gambar
                      ),
                      SizedBox(width: 16), // Jarak antara gambar dan teks
                      Text(
                        'Cek Suhu Tubuh',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
