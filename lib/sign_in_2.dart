import 'package:flutter/material.dart';
import 'login.dart';
import 'sign_in.dart';

class sign2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: sign_in_2(),
      routes: {
        "/login": (context) => login(),
        "/sign_in": (context) => sign_in(),
      },
    );
  }
}

class sign_in_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushNamed(context, "/sign_in");
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/care-4.png'),
                fit: BoxFit.cover,
              ),
            ),
            // Konten kolom pertama
          ),
        ),
        Expanded(
            child: Container(
          width: 500,
          color: const Color(0xff024a92),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(height: 50),
            const Text('TERIMAKASIH TELAH MELAKUKAN REGISTRASI',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const Text(
              'DI APLIKASI MOBILE CARE',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              "SILAHKAN MENUJU HALAMAN LOGIN",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                foregroundColor:
                    Colors.black, // Ubah warna latar belakang tombol
                padding: const EdgeInsets.symmetric(
                    vertical: 18, horizontal: 90), // Ubah ukuran padding tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10), // Ubah ukuran radius border tombol
                ),
              ),
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ]),
        ))
      ],
    ));
  }
}
