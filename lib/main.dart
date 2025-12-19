import 'package:flutter/material.dart';
import 'package:slicing_jurnalku/Pages/catatan.dart';
import 'package:slicing_jurnalku/Pages/home.dart';
import 'package:slicing_jurnalku/Pages/permintaansaksi.dart';
import 'package:slicing_jurnalku/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: PermintaanSaksi(),
    );
  }
}
