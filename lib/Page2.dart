import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:from_css_color/from_css_color.dart';

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
            image: AssetImage("images/background.png"),
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
                      color: fromCssColor('#777C6F'),
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
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: fromCssColor('#777C6F'),
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
                  // color: Color.from(alpha: 1, red: 0.337, green: 0.373, blue: 0.588),
                  color: fromCssColor('#777C6D'),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                           color: fromCssColor('#EEEEEE'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Siswa SMK Wikrama Bogor kelas 11 jurusan PPLG  yang memiliki minat di bidang teknologi informasi, pengembangan web, dan desain digital. Saya memiliki kemampuan dasar dalam pembuatan website menggunakan HTML, CSS, JavaScript, PHP. Saya adalah pribadi yang disiplin, bertanggung jawab, dan mampu bekerja sama dengan baik dalam tim maupun secara mandiri. Melalui program PKL, saya ingin mendapatkan pengalaman kerja nyata serta mengembangkan kemampuan yang saya miliki di dunia industri.",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                           color: fromCssColor('#EEEEEE'),
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
                   color: fromCssColor('#777C6D'),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Education - SMK WIKRAMA BOGOR",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                           color: fromCssColor('#EEEEEE'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Saya Mempelajari dasar-dasar pemrograman. Membuat proyek website menggunakan HTML, CSS, dan JavaScript, PHP. Mempelajari desain antarmuka (UI/UX) dan basis data Berpartisipasi dalam tugas dan proyek pengembangan aplikasi.",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                           color: fromCssColor('#EEEEEE'),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Saya juga sudah membuat projek menggunakan beberapa framework seperti Laravel, expressJs, dsb.", 
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                           color: fromCssColor('#EEEEEE'),
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
                     color: fromCssColor('#777C6D'),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Skill", style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.amberAccent, // Beda warna heading
                      )),
                      SizedBox(height: 10),
                      Text("HTML", style: GoogleFonts.poppins(color: Colors.white, fontSize: 14)),
                      SizedBox(height: 8),
                      Text("CSS", style: GoogleFonts.poppins(color: Colors.white, fontSize: 14)),
                      SizedBox(height: 8),
                      Text("Javascript", style: GoogleFonts.poppins(color: Colors.white, fontSize: 14)),
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