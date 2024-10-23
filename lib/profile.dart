import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Profile', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar dan nama
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/image/avatar.png'), // Ganti dengan gambar avatar yang sesuai
              ),
              SizedBox(height: 16),
              Text(
                'Your Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'yourname@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 32),

              // Form input: First Name
              TextFormField(
                decoration: InputDecoration(
                  labelText: "What's your first name?",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Form input: Last Name
              TextFormField(
                decoration: InputDecoration(
                  labelText: "And your last name?",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Form input: Phone Number
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone number",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
              SizedBox(height: 16),

              // Dropdown: Gender
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Select your gender",
                  border: OutlineInputBorder(),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text("Male"),
                    value: "Male",
                  ),
                  DropdownMenuItem(
                    child: Text("Female"),
                    value: "Female",
                  ),
                  DropdownMenuItem(
                    child: Text("Other"),
                    value: "Other",
                  ),
                ],
                onChanged: (value) {
                  // Aksi ketika pilihan gender berubah
                },
              ),
              SizedBox(height: 16),

              // Form input: Date of Birth
              TextFormField(
                decoration: InputDecoration(
                  labelText: "What is your date of birth?",
                  border: OutlineInputBorder(),
                ),
                onTap: () async {
                  // Aksi untuk membuka date picker
                  FocusScope.of(context).requestFocus(new FocusNode());
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );
                  // Handle tanggal yang dipilih
                },
              ),
              SizedBox(height: 32),

              // Tombol Update Profile
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent, // Ganti 'primary' dengan 'backgroundColor'
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Update Profile',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
