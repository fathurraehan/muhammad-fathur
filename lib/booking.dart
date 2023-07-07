import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:www/homepage.dart';
import 'package:www/progress.dart';

void main() {
  runApp(booking());
}

class booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookingPage(),
    );
  }
}

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
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
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Route route = MaterialPageRoute(builder: (context) => home());
              Navigator.push(context, route);
            },
          ),
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
              child: Text('Form Pemesanan',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
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
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: _dateController,
                      decoration: const InputDecoration(
                        labelText: 'Tanggal Konsultasi',
                      ),
                      onTap: () {
                        _selectDate(context);
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Tanggal harus diisi';
                        }
                        return null;
                      },
                    ),
                    DropdownSearch<String>(
                      mode: Mode.MENU,
                      showSelectedItems: true,
                      items: const [
                        "UMUM",
                        "BPJS",
                        "JAMSOSTEK",
                        'Kartu Indonesia Sehat'
                      ],
                      dropdownSearchDecoration: const InputDecoration(
                        labelText: "Jenis Layanan",
                        hintText: "Pilih Layanan",
                      ),
                      onChanged: (text) {
                        setState(() {
                          JenisLayanan = text;
                        });
                      },
                      showSearchBox: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //Kunci Membuat Menyimpan Data
                    //Text(
                    // "You choose ${JenisLayanan}",
                    //   style: TextStyle(fontSize: 20),
                    // ),
                    DropdownSearch<String>(
                      mode: Mode.MENU,
                      showSelectedItems: true,
                      items: const [
                        "dr. Sudiyana Hasyim, Sp.A",
                        "dr. Nono Mattarungan, Sp.PD"
                            "dr. Achmad Yusri Rachmani Diartoputro, Sp.JP",
                        "dr. Adi Aryanto, Sp.OT",
                        "dr. Andi Hasnawati, Sp.OG",
                        "dr. Andravita Fenti Mitaart, Sp.KK",
                        "dr. Silvia Pagitta Tarigan, Sp.GK",
                        "dr. Christiani Muljono, Sp.JP",
                      ],
                      dropdownSearchDecoration: const InputDecoration(
                        labelText: "Dokter",
                        hintText: "Pilih Dokter",
                      ),
                      onChanged: (text) {
                        setState(() {
                          Dokter = text;
                        });
                      },
                      showSearchBox: true,
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                      ),
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          labelText: "Keluhan",
                          hintText: "Keterangan Keluhan",
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 16.0,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff024a92),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Route route = MaterialPageRoute(
                              builder: (context) => Progress());
                          Navigator.push(context, route);
                        },
                        child: const Text('Kirim')),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
