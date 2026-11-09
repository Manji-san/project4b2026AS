import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 59, 93, 95),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.favorite, color: Colors.red, size: 50),
            SizedBox(width: 20),
            Icon(Icons.star, color: Colors.yellow, size: 50),
            SizedBox(width: 20),
            Icon(Icons.thumb_up, color: Colors.blue, size: 50),
            SizedBox(width: 20),
            Icon(Icons.access_alarm, color: Colors.green, size: 50),
            SizedBox(width: 20),
            Icon(Icons.airplanemode_active, color: Colors.orange, size: 50),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  Widget buildIcon(IconData icono, Color color1) {
    return Icon(icono, color: color1, size: 50);
  }
}
