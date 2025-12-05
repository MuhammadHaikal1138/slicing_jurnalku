import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingAccountPage extends StatefulWidget {
  const SettingAccountPage({super.key});

  @override
  State<SettingAccountPage> createState() => _SettingAccountPageState();
}

class _SettingAccountPageState extends State<SettingAccountPage> {

  bool seeOldPassword = true;
  bool seeNewPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pengaturan Akun",
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text("Dashboard / Pengaturan Akun"),
              SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[200]!),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Informasi Profil",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[300],
                              ),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.grey[200],
                                backgroundImage: AssetImage(
                                  "assets/images/foto_profile.jpg",
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Klik untuk mengubah foto",
                          style: GoogleFonts.poppins(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Text(
                      "Nama",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: TextEditingController(
                        text: "Muhammad Haikal",
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      enabled: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "NIS",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: TextEditingController(
                        text: "12309863",
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      enabled: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Rombel",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: TextEditingController(
                        text: "PPLG XII-3",
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      enabled: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Rayon",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: TextEditingController(
                        text: "Ciawi 2",
                      ),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      enabled: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[200]!),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ubah Kata Sandi",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Kata Sandi Lama",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: seeOldPassword,
                      enabled: true,
                      decoration: InputDecoration(
                        hintText: "Masukkan Password",
                        filled: true,
                        fillColor: Colors.grey[100],
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[200]! ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue[600]!, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(seeOldPassword? Icons.visibility_off : Icons.visibility, size: 20, color: Colors.grey,),
                          onPressed: (){
                            setState(() {
                              seeOldPassword = !seeOldPassword;
                            });
                          },
                        ),
                      ),
                    ),
                    Text(
                      "Masukkan kata sandi lama anda",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[600]
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Kata Sandi Baru",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: seeNewPassword,
                      enabled: true,
                      decoration: InputDecoration(
                        hintText: "Masukkan password",
                        filled: true,
                        fillColor: Colors.grey[100],
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[200]!),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue[600]!, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(seeNewPassword? Icons.visibility_off : Icons.visibility, size: 20, color: Colors.grey,),
                          onPressed: (){
                            setState(() {
                              seeNewPassword = !seeNewPassword;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 26,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(20),
                        backgroundColor: Colors.indigo,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      onPressed: (){

                      }, 
                      child: Text(
                        "Simpan Perubahan",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
