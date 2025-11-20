import 'package:flutter/material.dart';

class CatatanSikap extends StatelessWidget {
  const CatatanSikap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.home, size: 28, color: Colors.grey),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(
              width: double.infinity,
              child: const Text(
                'Adit Suryadit',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 2),
            SizedBox(
              width: double.infinity,
              child: const Text(
                'PPLG XII-1',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text(
                "Catatan Sikap",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8.0),
              child: Text(
                "Lihat catatan sikap dan perilaku yang telah dilaporkan.",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.yellow[50],
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.orange.shade100),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6.0),
                    child: const Icon(
                      Icons.warning,
                      color: Colors.orange,
                      size: 18,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Perhatian',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.amber,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Jika Anda merasa ada catatan yang tidak sesuai atau keliru, silakan hubungi guru jurusan untuk mengajukan klarifikasi',
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Total Catatan',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '0',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.note,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Dalam Perbaikan',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '0',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Sudah Dirubah',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '0',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  double minWidth = 900; // min lebar tabel
                  double tableWidth = constraints.maxWidth > minWidth
                      ? constraints.maxWidth
                      : minWidth;
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      width: tableWidth,
                      child: Column(
                        children: [
                          // HEADER
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "NO",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    "KATEGORI",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    "CATATAN",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    "STATUS",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    "DILAPORKAN",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    "UPDATE TERAKHIR",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "AKSI",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // no data
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 40),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey.shade400,
                                      width: 2,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.grey.shade500,
                                    size: 28,
                                  ),
                                ),
                                SizedBox(height: 14),
                                Text(
                                  "Tidak ada catatan",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF4A4A4A),
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  "Belum ada catatan sikap yang dilaporkan",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
