class Student {
  final String id;
  final String nama;
  final String foto;
  final String nis;
  final String rombel;
  final String rayon;
  final String totalPortofolio;
  final String totalSertifikat;
  final String createdAt;
  final String updatedAt;

  Student({
    required this.id,
    required this.nama,
    required this.foto,
    required this.nis,
    required this.rombel,
    required this.rayon,
    required this.totalPortofolio,
    required this.totalSertifikat,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'].toString(),
      nama: json['nama'].toString(),
      foto: json['foto'].toString(),
      nis: json['nis'].toString(),
      rombel: json['rombel'].toString(),
      rayon: json['rayon'].toString(),
      totalPortofolio: json['total_portofolio'].toString(),
      totalSertifikat: json['total_sertifikat'].toString(),
      createdAt: json['created_at'].toString(),
      updatedAt: json['updated_at'].toString(),
    );
  }
}
