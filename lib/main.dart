import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: const Text('Student Card Project'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          // Container utama kartu
          child: Container(
            width: 360,
            height: 215,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 21, 86, 35), // Warna biru tua
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Bagian Atas: Judul & Icon (Row, Text, Icon)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'KARTU MAHASISWA',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold, // BOLD
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.school,
                      color: Colors.amberAccent,
                      size: 22,
                    ),
                  ],
                ),

                // Bagian Tengah: Foto & Biodata (Row, Column, Text, Icon)
                Row(
                  children: [
                    // Kotak Foto / Avatar
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 4, 11, 46),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 14),

                    // Teks Biodata (Column)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        // Nama Mahasiswa (BOLD & ITALIC)
                        Text(
                          'Ogi Bastian',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold, // BOLD
                            fontStyle: FontStyle.italic,  // ITALIC
                          ),
                        ),
                        SizedBox(height: 3),

                        // NPM (UNDERLINE)
                        Text(
                          'NPM: 24670010',
                          style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 13,
                            decoration: TextDecoration.underline, // UNDERLINE
                            decorationColor: Colors.amberAccent,
                          ),
                        ),
                        SizedBox(height: 2),

                        // Universitas
                        Text(
                          'Universitas PGRI Semarang',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Garis pembatas tipis
                Container(
                  height: 1,
                  color: Colors.white24,
                ),

                // Bagian Bawah: Icon-icon simple yang rapat & rapi (Row & Icon)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.email, color: Colors.white70, size: 18),
                    Icon(Icons.phone, color: Colors.white70, size: 18),
                    Icon(Icons.location_on, color: Colors.white70, size: 18),
                    Icon(Icons.qr_code, color: Colors.amberAccent, size: 18),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}