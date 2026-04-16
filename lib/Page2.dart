import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // INI YANG DIUBAH: bikin rata kiri
              children: <Widget>[
                // Panah di pinggir kiri
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(248, 6, 3, 53),
                      size: 28,
                    ),
                  ),
                ),
                // Tengahin avatar dan nama
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage("images/arlin.jpeg"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Arlin Nurliani",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(248, 6, 3, 53),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Card 1 - About
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromRGBO(86, 95, 150, 1),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Aku adalah Judy Hopps, kelinci pertama yang berhasil menjadi polisi di Zootopia. Aku dikenal sebagai sosok yang optimis, idealis, dan penuh tekad. Meskipun sering diremehkan, aku terus berusaha membuktikan kemampuanku. Dalam perjalananku, aku bekerja sama dengan Nick Wilde, seekor rubah yang licik, untuk memecahkan berbagai kasus.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                // Card 2 - History
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color.fromRGBO(58, 64, 103, 1),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "History",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Aku lahir dan dibesarkan di kota kecil bernama Bunnyburrow, tempat sebagian besar kelinci hidup sederhana sebagai petani. Sejak kecil, aku sudah punya mimpi besar: menjadi polisi di Zootopia, sesuatu yang dianggap mustahil bagi seekor kelinci. Meski sering diragukan, aku tidak menyerah dan terus berusaha membuktikan bahwa aku mampu.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Aku akhirnya berhasil masuk akademi kepolisian Zootopia. Di sana, aku menghadapi berbagai tantangan fisik dan mental, tapi dengan kerja keras dan tekad, aku lulus sebagai yang terbaik di angkatanku. Setelah resmi menjadi polisi, aku ditempatkan di Departemen Kepolisian Zootopia, meskipun awalnya hanya diberi tugas sebagai petugas parkir.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                // Card 3 - SKILL
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(58, 64, 103, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Skill", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.amberAccent, // Beda warna heading
                      )),
                      SizedBox(height: 10),
                      Text("HTML", style: TextStyle(color: Colors.white, fontSize: 14)),
                      SizedBox(height: 8),
                      Text("CSS", style: TextStyle(color: Colors.white, fontSize: 14)),
                      SizedBox(height: 8),
                      Text("Javascript", style: TextStyle(color: Colors.white, fontSize: 14)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}