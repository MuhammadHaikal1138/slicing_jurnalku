import 'package:flutter/material.dart';
import 'package:slicing_jurnalku/user_guide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: UserGuidePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}