// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePageWidget(),
    );
  }
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});
  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Widget crearTarjeta(String nombre, String categoria, String url) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 60),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.network(
                url,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                // Si la imagen falla, muestra un icono de aviso
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey[200],
                  child: const Icon(Icons.image_not_supported, color: Colors.red),
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0, 0.45),
            child: Text(
              nombre,
              style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0, 0.65),
            child: Text(
              categoria,
              style: GoogleFonts.inter(fontSize: 11, color: Colors.grey),
            ),
          ),
          const Align(
            alignment: AlignmentDirectional(0, 0.90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star_purple500_rounded, size: 18),
                Icon(Icons.star_purple500_rounded, size: 18),
                Icon(Icons.star_purple500_rounded, size: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('ENTRE MIGAS', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(12),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
        children: [
          crearTarjeta('Concha', 'Panaderia Mexicana', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/refs/heads/main/concha-removebg-preview.png'),
          crearTarjeta('Croissant', 'Panaderia Francesa', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/refs/heads/main/croissant.webp'),
          crearTarjeta('Matcha', 'Bebidas', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/refs/heads/main/matcha.jfif'),
          crearTarjeta('Chocolate', 'Bebidas', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/main/chocolate.jpg'),
          crearTarjeta('Muffins', 'Reposteria', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/main/muffins.jpg'),
          crearTarjeta('Moka', 'Bebidas', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/main/moka.webp'),
          // Nota: Corregido a "espresso.webp" que es el nombre real en tu repo
          crearTarjeta('Expresso', 'Bebidas', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/main/espresso.webp'),
          crearTarjeta('Brioche', 'Reposteria', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/main/Brioche.jpg'),
          crearTarjeta('Dona', 'Reposteria', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/main/dona.jpg'),
          crearTarjeta('Bagel', 'Panaderia', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/refs/heads/main/artesanal.jpg'),
          crearTarjeta('Cheesecake', 'Reposteria', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/refs/heads/main/muffins.jpg'),
          crearTarjeta('Latte', 'Bebidas', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/main/latte.jpg'),
          crearTarjeta('Capuchino', 'Bebidas', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/refs/heads/main/cafe%20frrio.png'),
          crearTarjeta('Americano', 'Bebidas', 'https://raw.githubusercontent.com/AmbarKislev/pannnnnn/refs/heads/main/espresso.webp'),
        ],
      ),
    );
  }
}