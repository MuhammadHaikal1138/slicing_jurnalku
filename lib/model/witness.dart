class Witness {
  final int id;
  final String nama;
  final String keterangan;
  final String createdAt;
  final String updatedAt;

  Witness({
    required this.id,
    required this.nama,
    required this.keterangan,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Witness.fromJson(Map<String, dynamic> json) {
    return Witness(
      id: json['id'],
      nama: json['nama'],
      keterangan: json['keterangan'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
