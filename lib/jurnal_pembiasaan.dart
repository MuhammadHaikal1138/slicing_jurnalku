import 'package:flutter/material.dart';

class JurnalPembiasaanPage extends StatelessWidget {
  const JurnalPembiasaanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: IconButton(icon: Icon(Icons.home), onPressed: () {}),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "Suep Haryanto",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "PPLG XII-3",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),

      // SCROLL VIEW
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Text(
                "Jurnal Pembiasaan",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              Text(
                "November - 2025",
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),

              SizedBox(height: 15),

              // BUTTON BULAN SEBELUMNYA
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.arrow_back, color: Colors.white, size: 20),
                    SizedBox(width: 8),
                    Text(
                      "Bulan Sebelumnya",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              // Bagian A
              Text(
                "A. Pembiasaan harian",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),

              Row(
                children: const [
                  Icon(Icons.check_circle, color: Colors.green, size: 18),
                  SizedBox(width: 5),
                  Text("Sudah diisi"),

                  SizedBox(width: 20),
                  Icon(
                    Icons.radio_button_unchecked,
                    color: Colors.grey,
                    size: 18,
                  ),
                  SizedBox(width: 5),
                  Text("Belum diisi"),

                  SizedBox(width: 20),
                  Icon(Icons.cancel, color: Colors.red, size: 18),
                  SizedBox(width: 5),
                  Text("Tidak diisi"),
                ],
              ),

              SizedBox(height: 20),

              // GRID BOX — HARUS DIBATASI HEIGHT
              SizedBox(
                height: 300,
                child: GridView.builder(
                  itemCount: 30,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.25,
                  ),
                  itemBuilder: (context, index) {
                    int day = index + 1;

                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300], // tetap abu-abu
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          day.toString().padLeft(2, '0'),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 30),

              // BAGIAN B
              // BAGIAN B – dengan ExpansionTile dropdown
              ExpansionTile(
                title: Text(
                  "B. Pekerjaan yang dilakukan",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        // HEADER
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            border: Border(
                              bottom: BorderSide(color: Colors.grey),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "Pekerjaan",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Tgl",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Saksi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // DATA KOSONG
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Belum ada pekerjaan yang diinput.",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),

                        // FOOTER – Tambah pekerjaan
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            border: Border(top: BorderSide(color: Colors.grey)),
                          ),
                          child: Text(
                            "+ Tambah Pekerjaan",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),
              // BAGIAN B
              ExpansionTile(
                title: Text(
                  "C. Materi yang dipelajari",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // HEADER
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            border: Border(
                              bottom: BorderSide(color: Colors.grey),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "Materi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Sts",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Tgl",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // ROW DATA KOSONG
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Belum ada Materi yang diinput.",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),

                        // FOOTER TAMBAH PEKERJAAN
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            border: Border(top: BorderSide(color: Colors.grey)),
                          ),
                          child: Text(
                            "+ Tambah Materi",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // A APPROVED
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text("A : Approved"),

                  SizedBox(width: 20),

                  // P PENDING
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.yellow[700],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text("P : Pending"),

                  SizedBox(width: 20),

                  // R REVISI
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 6),
                  Text("R : Revisi"),
                ],
              ),

              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExpansionTile(
                    title: Text(
                      "D. Poin",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    children: [
                      SizedBox(height: 10),

                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Table(
                          border: TableBorder.symmetric(
                            inside: BorderSide(color: Colors.grey),
                          ),
                          columnWidths: const {
                            0: FlexColumnWidth(3),
                            1: FlexColumnWidth(1),
                            2: FlexColumnWidth(1),
                            3: FlexColumnWidth(1),
                            4: FlexColumnWidth(1),
                          },
                          children: [
                            // HEADER
                            TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                              ),
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "Kategori Poin",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "M1",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "M2",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "M3",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "M4",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // ROW 1
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "(5) mengerjakan project/adanya update progress belajar",
                                  ),
                                ),
                                ...List.generate(
                                  4,
                                  (_) => const Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      "0",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // ROW 2
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "(1–5) poin dari pertanyaan atau laporan pengetahuan materi",
                                  ),
                                ),
                                ...List.generate(
                                  4,
                                  (_) => const Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      "0",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // ROW 3 — Jumlah poin minggu ini
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text("Jumlah poin minggu ini"),
                                ),
                                ...List.generate(
                                  4,
                                  (_) => const Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      "0",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // ROW 4 — Jumlah poin ceklist pembiasaan
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text("Jumlah poin ceklist pembiasaan"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text("0", textAlign: TextAlign.center),
                                ),
                                const SizedBox(),
                                const SizedBox(),
                                const SizedBox(),
                              ],
                            ),

                            // ROW 5 — Total keseluruhan
                            TableRow(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text("Jumlah keseluruhan poin"),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Text("0", textAlign: TextAlign.center),
                                ),
                                const SizedBox(),
                                const SizedBox(),
                                const SizedBox(),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
