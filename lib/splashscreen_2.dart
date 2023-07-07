import 'package:www/sign_in.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(splashscreen_2());
}

class splashscreen_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        "/login": (context) => login(),
        "/sign-in": (context) => sign_in()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image with Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                './assets/care-2.png',
                width: 800,
                height: 250,
                alignment: Alignment.center,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'MOBILE CARE',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Aksi yang dijalankan saat tombol ditekan
                  Navigator.pushNamed(context, "/login");
                },
                style: ElevatedButton.styleFrom(
                  primary:
                      const Color(0xff024a92), // Ubah warna latar belakang tombol
                  padding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 90), // Ubah ukuran padding tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10), // Ubah ukuran radius border tombol
                  ),
                ),
                child: const Text(
                  'MASUK',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi yang dijalankan saat tombol ditekan
                    Navigator.pushNamed(context, "/sign-in");
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                        const Color(0xff2A363B), // Ubah warna latar belakang tombol
                    padding: const EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 90), // Ubah ukuran padding tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Ubah ukuran radius border tombol
                    ),
                  ),
                  child: const Text(
                    'DAFTAR',
                    style: TextStyle(fontSize: 18),
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
