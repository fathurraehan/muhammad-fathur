import 'package:www/splashscreen_2.dart';
import 'package:flutter/material.dart';
import 'sign_in_2.dart';

void main() {
  runApp(sign_in());
}

class sign_in extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: sign(),
      routes: {
        "/verifikasi": (context) => sign2(),
        "/sign-in": (context) => sign_in(),
        "/splash": (context) => splashscreen_2(),
      },
    );
  }
}

class sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Column(children: [
      Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushNamed(context, "/splash");
              },
            ),
          ],
        ),
      ),
      Expanded(
          child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/care-3.png'), // Menggunakan AssetImage jika gambar dari sumber lokal
            fit: BoxFit.contain, // Menyesuaikan gambar dengan container
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'Nomor Induk Kependudukan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: '16 Digit Nomor Kependudukan',
                filled: true,
                fillColor: const Color(0xead8d6d6),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const Text(
            'Nama Sesuai KK',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Nama Lengkap',
                filled: true,
                fillColor: const Color(0xead8d6d6),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const Text(
            'Tanggal Lahir',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Tanggal Lahir',
                filled: true,
                fillColor: const Color(0xead8d6d6),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          const Text(
            'Atur Password',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Password Mobile Care',
                filled: true,
                fillColor: const Color(0xead8d6d6),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/verifikasi");
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xff024a92), // Ubah warna latar belakang tombol
                padding: const EdgeInsets.symmetric(
                    vertical: 18, horizontal: 90), // Ubah ukuran padding tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Ubah ukuran radius border tombol
                ),
              ),
              child: const Text(
                'VERIFIKASI DATA',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ]),
      ))
    ]));
  }
}
