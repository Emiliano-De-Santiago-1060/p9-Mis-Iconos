import 'package:flutter/material.dart';

void main() {
  runApp(const MiClaseApp());
}

class MiClaseApp extends StatelessWidget {
  const MiClaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFE3F2FD), // Azul claro
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF1565C0), // Azul oscuro vibrante
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF263238), // Texto oscuro
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Emiliano De Santiago 22308051281060",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildIconWithText(Icons.home, "Inicio", Color(0xFF42A5F5)),
              _buildIconWithText(Icons.search, "Buscar", Color(0xFFAB47BC)),
              _buildIconWithText(Icons.settings, "Ajustes", Color(0xFF26A69A)),
            ],
          ),
        ),
      ),
    );
  }

  // Método para crear los iconos con nombres al lado
  Widget _buildIconWithText(IconData icon, String text, Color color) {
    return Row(
      children: <Widget>[
        Icon(icon, size: 30, color: color), // Iconos con diferentes colores
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF263238), // Texto oscuro
          ),
        ),
      ],
    );
  }
}
