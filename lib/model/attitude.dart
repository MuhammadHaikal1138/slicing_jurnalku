class Attitude {
  final String id;
  final String kategori;
  final String catatan;
  final String status;
  final String dilaporkan;
  final String createdAt;
  final String updatedAt;

  Attitude({
    required this.id,
    required this.kategori,
    required this.catatan,
    required this.status,
    required this.dilaporkan,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Attitude.fromJson(Map<String, dynamic> json) {
    return Attitude(
      id: json['id'].toString(),
      kategori: json['kategori'].toString(),
      catatan: json['catatan'].toString(),
      status: json['status'].toString(),
      dilaporkan: json['dilaporkan'].toString(),
      createdAt: json['created_at'].toString(),
      updatedAt: json['updated_at'].toString(),
    );
  }
}
