import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  Login({super.key});

  final List<Map<String, dynamic>> _data = [
    {
      'icon': Icons.school,
      'title': 'Dirancang Untuk Sekolah Kami',
      'description':
          'Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.',
    },
    {
      'icon': Icons.forklift,
      'title': 'Pemantauan yang Terstruktur',
      'description':
          'Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.',
    },
    {
      'icon': Icons.person_2,
      'title': 'Fitur Praktis dan Bermanfaat',
      'description':
          'Termasuk reminder otomatis, grafik perkembangan, dan analisis mendalam untuk efektivitas belajar.',
    },
    {
      'icon': Icons.person,
      'title': 'Pengajuan Kompetensi oleh Siswa',
      'description':
          'Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi oleh guru.',
    },
    {
      'icon': Icons.note,
      'title': 'Validasi dan Tanda Tangan Guru',
      'description':
          'Setiap kompetensi yang disetujui akan diberikan tanda terima dan tanda tangan guru sebagai bukti.',
    },
    {
      'icon': Icons.monitor,
      'title': 'Pantauan Real-Time dan Transparan',
      'description':
          'Monitoring langsung, Menciptakan lingkungan belajar yang transparan dan efisien.',
    },
  ];

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          
          // Banner
          Image.asset(
            'assets/images/banner.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 20),

          // FORM
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  "Masuk untuk memulai Jurnalku",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                // Username / NIS
                Text(
                  "Username atau NIS",
                  style: GoogleFonts.poppins(fontSize: 14),
                ),
                const SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Masukan username atau NIS",
                    filled: true,
                    fillColor: const Color(0xfff1f4fb),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Password
                Text("Password", style: GoogleFonts.poppins(fontSize: 14)),
                const SizedBox(height: 5),
                TextField(
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    hintText: "Masukan password",
                    filled: true,
                    fillColor: const Color(0xfff1f4fb),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Button Masuk
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff004aad),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Masuk",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // Lupa password
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Lupa password? Hubungi guru laboran.",
                      style: GoogleFonts.poppins(color: Colors.grey),
                    ),
                  ),
                ),

                const SizedBox(height: 30),
                Center(
                  child: Text(
                    "Menyatukan Upaya untuk Kemajuan Siswa",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // === LIST FITUR ===
                Column(
                  children: widget._data.map((item) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ICON
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.yellow[100],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              item['icon'],
                              color: Colors.orange[700],
                              size: 30,
                            ),
                          ),

                          const SizedBox(width: 12),

                          // TEXT
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['title'],
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  item['description'],
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            color: const Color(0xff004aad),
            child: Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.school, color: Colors.white, size: 30),
                      SizedBox(width: 10),
                      Icon(Icons.abc, color: Colors.white, size: 30),
                      SizedBox(width: 10),
                      Icon(Icons.book, color: Colors.white, size: 30),
                      SizedBox(width: 10),
                      Icon(Icons.person, color: Colors.white, size: 30),
                      SizedBox(width: 10),
                    ],
                  ),
                  Text(
                    "©GEN-28 PPLG SMK Wikrama Bogor. All rights reserved.",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
