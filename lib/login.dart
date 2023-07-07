import 'package:www/homepage.dart';
import 'package:www/splashscreen_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(login());
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginpage(),
      routes: {
        "/home": (context) => home(),
        "/splash": (context) => splashscreen_2(),
      },
    );
  }
}

class loginpage extends StatelessWidget {
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
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pushNamed(context, "/splash");
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image.asset(
                './assets/care-4.png',
                width: 800,
                height: 220,
                alignment: Alignment.center,
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Text(
                'Nomor Induk Kependudukan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '16 Digit Nomor Kependudukan',
                    filled: true,
                    fillColor: Color(0xead8d6d6),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Text(
                'Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password Mobile Care',
                    filled: true,
                    fillColor: Color(0xead8d6d6),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                        Color(0xff024a92), // Ubah warna latar belakang tombol
                    padding: EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 90), // Ubah ukuran padding tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Ubah ukuran radius border tombol
                    ),
                  ),
                  child: Text(
                    'MASUK',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ]),
          )
        ]));
  }
}
