import 'package:flutter/material.dart';
import 'user_service.dart';
import 'user_page.dart';

class HomePage extends StatelessWidget {
  // Daftar gambar kucing
  final List<ImageData> images = [
    ImageData(
      id: "Kucing Random 1",
      url: "https://cdn2.thecatapi.com/images/8pCFG7gCV.jpg",
      width: 1080,
      height: 1350,
    ),
    ImageData(
      id: "Kucing Random 2",
      url: "https://cdn2.thecatapi.com/images/IFXsxmXLm.jpg",
      width: 973,
      height: 973,
    ),
    ImageData(
      id: "Kucing Random 3",
      url: "https://cdn2.thecatapi.com/images/8ciqdpaO5.jpg",
      width: 1080,
      height: 809,
    ),
    ImageData(
      id: "Kucing Random 4",
      url: "https://cdn2.thecatapi.com/images/iWyIaja-G.jpg",
      width: 1080,
      height: 1350,
    ),
    ImageData(
      id: "Kucing Random 5",
      url: "https://cdn2.thecatapi.com/images/GAmy2bg8G.jpg",
      width: 1024,
      height: 817,
    ),
    ImageData(
      id: "Kucing Random 6",
      url: "https://cdn2.thecatapi.com/images/O3btzLlsO.png",
      width: 1795,
      height: 2397,
    ),
    ImageData(
      id: "Kucing Random 7",
      url: "https://cdn2.thecatapi.com/images/dN6eoeLjY.jpg",
      width: 1100,
      height: 739,
    ),
    ImageData(
      id: "Kucing Random 8",
      url: "https://cdn2.thecatapi.com/images/udZiLDG_E.jpg",
      width: 1200,
      height: 1200,
    ),
    ImageData(
      id: "Kucing Random 9",
      url: "https://cdn2.thecatapi.com/images/ZocD-pQxd.jpg",
      width: 1440,
      height: 1080,
    ),
    ImageData(
      id: "Kucing Random 10",
      url: "https://cdn2.thecatapi.com/images/4-5SzDNIL.jpg",
      width: 880,
      height: 1100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat Images Gallery'), // Judul aplikasi di AppBar
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom grid
          childAspectRatio: 1.0, // Rasio aspek dari setiap kartu
        ),
        itemCount: images.length, // Jumlah item dalam grid
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserPage(image: images[index]), // Navigasi ke halaman UserPage saat gambar ditekan
                ),
              );
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.network(
                      images[index].url, // Menampilkan gambar dari URL
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      images[index].id, // Menampilkan ID gambar
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
