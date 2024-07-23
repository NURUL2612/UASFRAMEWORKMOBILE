import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp()); // Fungsi utama yang menjalankan aplikasi MyApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat Images Gallery', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema utama aplikasi dengan warna biru
      ),
      home: HomePage(), // Halaman awal aplikasi adalah HomePage
    );
  }
}

