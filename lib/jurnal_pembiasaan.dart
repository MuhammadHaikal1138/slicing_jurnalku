import 'package:flutter/material.dart';

class JurnalPembiasaanPage extends StatelessWidget {
  const JurnalPembiasaanPage({Key? key}) : super(key: key);

  // =======================
  // HELPER WIDGET
  // =======================

  Widget statusDot(Color color) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }

  Widget infoCard({
    required String title,
    required String subtitle,
    required String trailing,
  }) {
    return SizedBox(
      width: double.infinity, // Membuat lebar maksimal
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 9),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text(subtitle, style: TextStyle(color: Colors.grey[600])),
              const SizedBox(height: 10),
              Text(
                trailing,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget poinRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget poinCard({
    required String title,
    required String m1,
    required String m2,
    required String m3,
    required String m4,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            poinRow("M1", m1),
            poinRow("M2", m2),
            poinRow("M3", m3),
            poinRow("M4", m4),
          ],
        ),
      ),
    );
  }

  Widget singleValueCard({required String title, required String value}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(title)),
            Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  // =======================
  // UI
  // =======================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(icon: const Icon(Icons.home), onPressed: () {}),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "Suep Haryanto",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text("PPLG XII-3", style: TextStyle(color: Colors.black)),
                  ],
                ),
                const SizedBox(width: 10),
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HEADER
            const Text(
              "Jurnal Pembiasaan",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text("November - 2025", style: TextStyle(color: Colors.grey[700])),
            const SizedBox(height: 20),

            // =======================
            // A. PEMBIASAAN
            // =======================
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

            const SizedBox(height: 30),

            // =======================
            // B. PEKERJAAN
            // =======================
            ExpansionTile(
              title: const Text(
                "B. Pekerjaan yang dilakukan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                infoCard(
                  title: "Pekerjaan",
                  subtitle: "Belum ada pekerjaan yang diinput.",
                  trailing: "+ Tambah Pekerjaan",
                ),
              ],
            ),

            const SizedBox(height: 20),

            // =======================
            // C. MATERI
            // =======================
            ExpansionTile(
              title: const Text(
                "C. Materi yang dipelajari",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                infoCard(
                  title: "Materi",
                  subtitle: "Belum ada materi yang diinput.",
                  trailing: "+ Tambah Materi",
                ),
              ],
            ),

            const SizedBox(height: 20),

            // STATUS LEGEND
            Row(
              children: [
                statusDot(Colors.green),
                const SizedBox(width: 6),
                const Text("A : Approved"),
                const SizedBox(width: 20),
                statusDot(Colors.yellow),
                const SizedBox(width: 6),
                const Text("P : Pending"),
                const SizedBox(width: 20),
                statusDot(Colors.red),
                const SizedBox(width: 6),
                const Text("R : Revisi"),
              ],
            ),

            const SizedBox(height: 30),

            // =======================
            // D. POIN
            // =======================
            ExpansionTile(
              title: const Text(
                "D. Poin",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                poinCard(
                  title: "(5) Mengerjakan project / update progress belajar",
                  m1: "0",
                  m2: "0",
                  m3: "0",
                  m4: "0",
                ),
                poinCard(
                  title: "(1–5) Poin dari pertanyaan / laporan materi",
                  m1: "0",
                  m2: "0",
                  m3: "0",
                  m4: "0",
                ),
                singleValueCard(
                  title: "Jumlah poin ceklist pembiasaan",
                  value: "0",
                ),
                singleValueCard(title: "Jumlah keseluruhan poin", value: "0"),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
