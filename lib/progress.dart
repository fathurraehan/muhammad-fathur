import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:www/booking.dart';
import 'package:www/close_greeting.dart';

void main() {
  runApp(Progress());
}

class Progress extends StatefulWidget {
  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('yyyy-MM-dd').format(_selectedDate!);
      });
    }
  }

  //validation
  String? JenisLayanan;
  String? Dokter;

  String? label;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff024a92),
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Container(
              color: const Color(0xff024a92),
            ),
            const Positioned(
                left: 15,
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    CircleAvatar(
                      radius: 30, // ubah sesuai dengan ukuran yang diinginkan
                      backgroundImage: AssetImage(
                          "assets/yuta.jpg"), // ganti dengan URL foto profil yang valid
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          'Halo, Selamat Datang !',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          textAlign: TextAlign.start,
                          'Nakamoto Yuta',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                )),
            const Positioned(
              top: 80,
              left: 30,
              child: Padding(
                padding: EdgeInsets.only(left: 35),
                child: Text('Rumah Sakit Pertamina',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            Positioned(
              top: 100,
              child: Container(
                width: 322,
                height: 550,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20), // Mengatur lengkungan di bagian bawah
                  ),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 200,
                      width: 800,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image-2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 25, bottom: 45),
                      child: Text(
                        "Keterangan Konsultasi",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Text("Nama Pasien : Nakamoto Yuta",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    const Text("Tanggal Konsultasi : 12 April 2023",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    const Text("Jenis Layanan : BPJS Kesehatan",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    const Text(
                      "Dokter : dr. Sudiyana Hasyim, Sp.A",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    const Text(
                      "Nomor Antrian : 1",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(top: 25)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff2A363B),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 25),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Route route = MaterialPageRoute(
                                  builder: (context) => booking());
                              Navigator.push(context, route);
                            },
                            child: const Text('Batal')),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff024a92),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Route route = MaterialPageRoute(
                                  builder: (context) => close_greeting());
                              Navigator.push(context, route);
                            },
                            child: const Text('Selesai')),
                      ],
                    ),
                    SizedBox(height:20),
                    const Text(
                      "Note : Diharapkan Pasien datang tepat waktu",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
