import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressStudentPage extends StatelessWidget {
ProgressStudentPage({super.key});

  List <Map<String, dynamic>> progress = [
    {
      "title" : "Total Pengajuan",
      "total" : 2,
      "status" : "Semua status",
      "icon_badge" : Icons.check_circle_outline,
      "color" : Colors.indigo,
    },
    {
      "title" : "Halaman Ini",
      "total" : 0,
      "status" : "Data ditampilkan",
      "icon_badge" : Icons.calendar_today_outlined,
      "color" : Colors.green,
    },
    {
      "title" : "Status Pending",
      "total" : 0,
      "status" : "Perlu validasi",
      "icon_badge" : Icons.watch_later_outlined,
      "color" : Colors.amber,
    },
    {
      "title" : "Total Halaman",
      "total" : 1,
      "status" : "Navigasi tersedia",
      "icon_badge" : Icons.lightbulb_circle_outlined,
      "color" : Colors.indigo,
    },
  ];

  List <Map<String, dynamic>> task = [
    {
      "title" : "Project Work"
    },
    {
      "title" : "Mobile Apps"
    },
    {
      "title" : "UKK (Uji Kompetensi Keahlian)"
    },
    {
      "title" : "GIM"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: Icon(Icons.home_outlined, size: 20, color: Colors.grey[600]),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Muhammad Haikal",
                        // textAlign: TextAlign.end,
                        style: GoogleFonts.poppins(fontSize: 10),
                      ),
                      Text(
                        "PPLG XII-3",
                        // textAlign: TextAlign.end,
                        style: GoogleFonts.poppins(
                          fontSize: 8,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                ClipOval(
                  child: Image.asset(
                    "assets/images/foto_profile.jpg",
                    height: 32,
                    width: 32,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Progress Belajar",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Pantau perkembangan kompetensi dan materi pembelajaran Anda",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Wednesday, 19 November 2025",
                  style: GoogleFonts.poppins(
                    color: Colors.indigo,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15);
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[200]!,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${progress[index]["title"]}",
                              style: GoogleFonts.poppins(
                                color: Colors.grey[600],
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "${progress[index]["total"]}",
                              style: GoogleFonts.poppins(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: (progress[index]["color"] as Color),
                                  size: 12,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "${progress[index]["status"]}",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: (progress[index]["color"] as Color),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            progress[index]["icon_badge"],
                            size: 20,
                            color: (progress[index]["color"] as Color),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 32),
              ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15);
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(
                        color: Colors.grey[100]!,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${task[index]["title"]}",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Kompetensi dan materi pembelajaran",
                          style: GoogleFonts.poppins(
                            color: Colors.grey[600]!,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 20),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text(
                                "KOMPETENSI",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "GURU",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "TANGGAL",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "STATUS",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "CATATAN GURU",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600],
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "CATATAN SISWA",
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
