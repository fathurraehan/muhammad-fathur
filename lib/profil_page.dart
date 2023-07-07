import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF1A1E1F),
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Container(
              color: const Color.fromARGB(255, 26, 30, 31),
            ),
            const Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/yuta.jpg'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Nakamoto Yuta',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '640113560802000',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            Positioned(
              bottom: 120,
              left: 20,
              right: 20,
              child: Container(
                width: 322,
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20), // Mengatur lengkungan di bagian bawah
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Riwayat Konsultasi",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    const Text("Tanggal Konsultasi : 12 April 2023",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const Padding(padding: EdgeInsets.only(top: 5)),
                    const Text("Jenis Layanan : BPJS Kesehatan",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const Padding(padding: EdgeInsets.only(top: 5)),
                    const Text(
                      "Dokter : dr. Sudiyana Hasyim, Sp.A",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 5)),
                    const Text(
                      "Rumah Sakit : Rumah Sakit Pertamina",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 25)),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
