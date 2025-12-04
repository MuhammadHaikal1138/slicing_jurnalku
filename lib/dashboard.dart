import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsetsGeometry.all(0),
          child: Icon(Icons.home_outlined, size: 20, color: Colors.grey[600],),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Muhammad Haikal",
                      // textAlign: TextAlign.end,
                      style: GoogleFonts.poppins(
                        fontSize: 10
                      ),
                    ),
                    Text(
                      "PPLG XII-3",
                      // textAlign: TextAlign.end,
                      style: GoogleFonts.poppins(
                        fontSize: 8,
                        color: Colors.grey[600]
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12,),
              ClipOval(
                child: Image.asset("assets/images/foto_profile.jpg", height: 32, width: 32, fit: BoxFit.cover,)),
            ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue[900]
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Selamat Datang di Jurnalku",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Solusi cerdas untuk memantau perkembangan kompetensi siswa secara efektif",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 36, vertical: 46),
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Apa itu Jurnalku?",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white
                          ),
                        ),
                        SizedBox(height: 12,),
                        Text(
                          "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur, dan real-time. Dengan fitur lengkap, proses pemantauan menjadi lebih mudah dan transparan.",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(36),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.castle_outlined, size: 36, color: Colors.indigo[900],),
                          SizedBox(height: 20,),
                          Text(
                            "Dirancang Khusus",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa.",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(36),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.people, size: 36, color: Colors.indigo[900],),
                          SizedBox(height: 20,),
                          Text(
                            "Efektif",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "Memudahkan siswa dan guru melihat perkembangan secara real-time.",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(36),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(Icons.school_outlined, size: 36, color: Colors.indigo[900],),
                          SizedBox(height: 20,),
                          Text(
                            "Terintegrasi",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            "Pengajuan kompetensi siswa, validasi dan laporan perkembangan yang transparan.",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32,),
                  Text(
                    "Menu Aplikasi",
                    style: GoogleFonts.poppins(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Icon(Icons.person_outline, size: 20, color: Colors.blue[600],),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Profil",
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                // SizedBox(height: 5,),
                                Text(
                                  "Lihat dan kelola profilmu disini.",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.grey[400],)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(color: Colors.grey[300],),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Icon(Icons.backpack, size: 20, color: Colors.blue[600],),
                            ),
                            SizedBox(width: 10,),
                            SizedBox(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Portofolio",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  // SizedBox(height: 5,),
                                  Text(
                                    "Lihat dan kelola portofolio kompetensimu di sini.",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.grey[400],)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(color: Colors.grey[300],),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Icon(Icons.stream_sharp, size: 20, color: Colors.blue[600],),
                            ),
                            SizedBox(width: 10,),
                            SizedBox(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sertifikat",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  // SizedBox(height: 5,),
                                  Text(
                                    "Lihat dan unduh sertifikat kompetensimu di sini.",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.grey[400],)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Icon(Icons.menu_book_rounded, size: 20, color: Colors.blue[600],),
                            ),
                            SizedBox(width: 10,),
                            SizedBox(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jurnal Pembiasaan",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  // SizedBox(height: 5,),
                                  Text(
                                    "Catat dan pantau pembiasaan harianmu.",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.grey[400],)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(color: Colors.grey[300],),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Icon(Icons.people_outline_rounded, size: 20, color: Colors.blue[600],),
                            ),
                            SizedBox(width: 10,),
                            SizedBox(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Permintaan Saksi",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  // SizedBox(height: 5,),
                                  Text(
                                    "Lihat teman yang mengajukan permintaan saksi.",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.grey[400],)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(color: Colors.grey[300],),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Icon(Icons.bar_chart_rounded, size: 20, color: Colors.blue[600],),
                            ),
                            SizedBox(width: 10,),
                            SizedBox(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Progress",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  // SizedBox(height: 5,),
                                  Text(
                                    "Lihat kemajuan kompetensi dan pencapaian belajarmu.",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.grey[400],)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(color: Colors.grey[300],),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Icon(Icons.warning_amber_rounded, size: 20, color: Colors.blue[600],),
                            ),
                            SizedBox(width: 10,),
                            SizedBox(
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Catatan sikap",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  // SizedBox(height: 5,),
                                  Text(
                                    "Lihat catatan sikap dan perilaku dari guru.",
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.grey[600],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.grey[400],)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "STATISTIK KOMPETENSI",
                    style: GoogleFonts.poppins(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Materi Diselesaikan",
                              style: GoogleFonts.poppins(
                                color: Colors.grey[800],
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "2",
                              style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.circle_rounded, size: 12, color: Colors.green,),
                                SizedBox(width: 5,),
                                Text(
                                  "Selesai",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Icon(Icons.check_circle_outline, size: 20, color: Colors.green,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pengajuan Pending",
                              style: GoogleFonts.poppins(
                                color: Colors.grey[800],
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "0",
                              style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.circle_rounded, size: 12, color: Colors.amber,),
                                SizedBox(width: 5,),
                                Text(
                                  "Pending",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.amber,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Icon(Icons.watch_later_outlined, size: 20, color: Colors.amber,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Materi Hari Ini",
                              style: GoogleFonts.poppins(
                                color: Colors.grey[800],
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "0",
                              style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.circle_rounded, size: 12, color: Colors.blue[700],),
                                SizedBox(width: 5,),
                                Text(
                                  "Hari Ini",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.blue[700],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Icon(Icons.calendar_today_outlined, size: 20, color: Colors.blue[700],),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Materi Revisi",
                              style: GoogleFonts.poppins(
                                color: Colors.grey[800],
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "0",
                              style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.circle_rounded, size: 12, color: Colors.indigo,),
                                SizedBox(width: 5,),
                                Text(
                                  "Revisi",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.indigo,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Icon(Icons.recycling_rounded, size: 20, color: Colors.indigo,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 26),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Progress Akademik",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.circle, size: 12, color: Colors.blue,),
                                  SizedBox(width: 5,),
                                  Text("Selesai"),
                                ],
                              ),
                            ),
                            Text("2"),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.circle, size: 12, color: Colors.blue[700],),
                                  SizedBox(width: 5,),
                                  Text("Pending"),
                                ],
                              ),
                            ),
                            Text("0"),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.circle, size: 12, color: Colors.blue[400],),
                                  SizedBox(width: 5,),
                                  Text("Belum Selesai"),
                                ],
                              ),
                            ),
                            Text("0"),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.circle, size: 12, color: Colors.blue[900],),
                                  SizedBox(width: 5,),
                                  Text("Hari ini"),
                                ],
                              ),
                            ),
                            Text("0"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 26),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]!, width: 1, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lihat Progress Kamu ->",
                          style: GoogleFonts.poppins(
                            color: Colors.blue[700],
                            fontSize: 14,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Installasi Postman",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.green[100],
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Text(
                                "Approved",
                                style: GoogleFonts.poppins(
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(color: Colors.grey[300],),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                "Implementasi Penggunaan Postman",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.green[100],
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Text(
                                "Approved",
                                style: GoogleFonts.poppins(
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Divider(color: Colors.grey[300],),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Lihat Semua Kompetensi",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.arrow_forward, color: Colors.black, size: 16, )
                          ],
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(height: 30,),
                  // Container(
                  //   width: double.infinity,
                  //   height: 40,
                  //   decoration: BoxDecoration(
                  //     color: Colors.grey[400],
                  //   ),
                  //   child: Center(
                  //     child: Text(
                  //       "© GEN-28 PPLG SMK Wikrama Bogor.All Rights Reserved.",
                  //       style: GoogleFonts.poppins(
                  //         color: Colors.blue,
                  //         fontSize: 12,
                  //       ),
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: Center(
                child: Text(
                  "© GEN-28 PPLG SMK Wikrama Bogor.All Rights Reserved.",
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}