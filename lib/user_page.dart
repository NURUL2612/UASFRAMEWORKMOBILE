import 'package:flutter/material.dart';
import 'user_service.dart';

class UserPage extends StatelessWidget {
  final ImageData image;

  UserPage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Details'), // Judul halaman di AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(image.url), // Menampilkan gambar dari URL
            ),
            SizedBox(height: 16),
            Text(
              'ID: ${image.id}', // Menampilkan ID gambar
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Width: ${image.width}', // Menampilkan lebar gambar
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Height: ${image.height}', // Menampilkan tinggi gambar
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
