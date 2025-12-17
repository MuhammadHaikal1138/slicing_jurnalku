import 'package:flutter/material.dart';

class LaporanPage extends StatelessWidget {
  const LaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Laporan Kegiatan"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // =======================
            // B. PEKERJAAN
            // =======================
            ExpansionTile(
              title: const Text(
                "B. Pekerjaan yang dilakukan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                _emptySection(
                  header: ["Pekerjaan", "Tgl", "Saksi"],
                  emptyText: "Belum ada pekerjaan yang diinput.",
                  footerText: "+ Tambah Pekerjaan",
                ),
              ],
            ),

            const SizedBox(height: 30),

            // =======================
            // C. MATERI
            // =======================
            ExpansionTile(
              title: const Text(
                "C. Materi yang dipelajari",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                _emptySection(
                  header: ["Materi", "Sts", "Tgl"],
                  emptyText: "Belum ada materi yang diinput.",
                  footerText: "+ Tambah Materi",
                ),
              ],
            ),

            const SizedBox(height: 20),

            // =======================
            // LEGEND STATUS
            // =======================
            Row(
              children: [
                _statusDot(Colors.green),
                const SizedBox(width: 6),
                const Text("A : Approved"),
                const SizedBox(width: 20),
                _statusDot(Colors.yellow),
                const SizedBox(width: 6),
                const Text("P : Pending"),
                const SizedBox(width: 20),
                _statusDot(Colors.red),
                const SizedBox(width: 6),
                const Text("R : Revisi"),
              ],
            ),

            const SizedBox(height: 30),

            // =======================
            // D. POIN (MOBILE FRIENDLY)
            // =======================
            ExpansionTile(
              title: const Text(
                "D. Poin",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              children: [
                _poinCard(
                  title: "(5) Mengerjakan project / update progress belajar",
                  m1: "0",
                  m2: "0",
                  m3: "0",
                  m4: "0",
                ),
                _poinCard(
                  title:
                      "(1–5) Poin dari pertanyaan / laporan pengetahuan materi",
                  m1: "0",
                  m2: "0",
                  m3: "0",
                  m4: "0",
                ),
                _poinTotal(
                  title: "Jumlah poin minggu ini",
                  m1: "0",
                  m2: "0",
                  m3: "0",
                  m4: "0",
                ),
                _singleValue(
                  title: "Jumlah poin ceklist pembiasaan",
                  value: "0",
                ),
                _singleValue(
                  title: "Jumlah keseluruhan poin",
                  value: "0",
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // =======================
  // WIDGET REUSABLE
  // =======================

  Widget _emptySection({
    required List<String> header,
    required String emptyText,
    required String footerText,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          // HEADER
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              border: const Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Row(
              children: header
                  .map(
                    (e) => Expanded(
                      child: Text(
                        e,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),

          // EMPTY DATA
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              emptyText,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          // FOOTER
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey)),
            ),
            child: Text(
              footerText,
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _statusDot(Color color) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }

  Widget _poinCard({
    required String title,
    required String m1,
    required String m2,
    required String m3,
    required String m4,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            _poinRow("M1", m1),
            _poinRow("M2", m2),
            _poinRow("M3", m3),
            _poinRow("M4", m4),
          ],
        ),
      ),
    );
  }

  Widget _poinRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _poinTotal({
    required String title,
    required String m1,
    required String m2,
    required String m3,
    required String m4,
  }) {
    return _poinCard(
      title: title,
      m1: m1,
      m2: m2,
      m3: m3,
      m4: m4,
    );
  }

  Widget _singleValue({
    required String title,
    required String value,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(title)),
            Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
