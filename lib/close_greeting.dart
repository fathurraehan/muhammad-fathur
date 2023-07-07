import 'package:flutter/material.dart';
import 'homepage.dart';

class close_greeting extends StatelessWidget {
  const close_greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          Container(
            child: Image.asset("assets/greet.png"),
          ),
          const Text("Terimakasih sudah menggunakan ",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.only(top: 5)),
          const Text("layanan kami sebagai layanan",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Padding(padding: EdgeInsets.only(top: 5)),
          const Text("Kesehatan Masyarakat",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => home());
              Navigator.push(context, route);
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xff2A363B),
              foregroundColor: Colors.white, // Ubah warna latar belakang tombol
              padding: const EdgeInsets.symmetric(
                  vertical: 18, horizontal: 90), // Ubah ukuran padding tombol
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10), // Ubah ukuran radius border tombol
              ),
            ),
            child: const Text("Kembali"),
          )
        ])));
  }
}
