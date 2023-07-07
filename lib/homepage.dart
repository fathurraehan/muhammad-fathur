import 'package:flutter/material.dart';
import 'package:www/booking.dart';
import 'package:www/profil_page.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  final List judul = [
    "Rumah Sakit Pertamina",
    "Rumah Sakit Restu Ibu",
    "Rumah Sakit Hermina",
    "Rumah Sakit Siloam",
    "Rumah Sakit Balikpapan Baru",
    "Rumah Sakit Kanujoso DJatiwibowo",
    "Rumah Sakit Dr. R Hardjanto",
    "Rumah Sakit Ibu Anak Asih",
    "Rumah Sakit Mata SMEC"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => ProfilePage());
                Navigator.push(context, route);
              },
              icon: Icon(Icons.account_circle_rounded),
            )
          ],
          backgroundColor: Color.fromRGBO(2, 74, 146, 1),
          elevation: 0.0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 15.0, bottom: 20.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(
                      20), // Mengatur lengkungan di bagian bawah
                ),
                color: Color(0xff024a92),
              ),
              child: const Row(
                children: [
                  SizedBox(width: 15),
                  CircleAvatar(
                    radius: 30, // ubah sesuai dengan ukuran yang diinginkan
                    backgroundImage: AssetImage("assets/yuta.jpg"),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
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
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
              top: 15.0,
            )),
            const Text("Pilihan Rumah Sakit",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: judul.length, // Ganti dengan jumlah item yang sesuai
                itemBuilder: (BuildContext context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.asset("assets/hospital-logo.png"),
                      title: Text(
                        judul[index],
                        style: const TextStyle(fontSize: 20),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: const Text(
                        'Klik Tombol di samping untuk melakukan pemesanan',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: const Icon(Icons.add_box_rounded),
                      onTap: () {
                        Route route =
                            MaterialPageRoute(builder: (context) => booking());
                        Navigator.push(context, route);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
