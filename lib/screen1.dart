import 'package:flutter/material.dart';
import 'package:widgets1/screen2.dart';
import 'package:widgets1/Screen3.dart';
import 'package:widgets1/Screen4.dart';
import 'package:widgets1/screen5.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 59, 93, 95),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            boton(
              'Botón 1',
              const Color.fromARGB(255, 149, 192, 228),
              Screen2(),
              context,
            ),
            SizedBox(height: 20),
            boton(
              'Botón 2',
              const Color.fromARGB(255, 54, 211, 59),
              Screen3(),
              context,
            ),
            SizedBox(height: 20),
            boton(
              'Botón 3',
              const Color.fromARGB(255, 97, 22, 16),
              Screen4(),
              context,
            ),
            SizedBox(height: 20),
            botonstf(
              'Botón 4',
              const Color.fromARGB(255, 193, 130, 206),
              Screen5(),
              context,
            ),
          ],
        ),
      ),
    );
  }

  Widget boton(
    String texto,
    Color color1,
    StatelessWidget screen,
    BuildContext context,
  ) {
    return ElevatedButton(
      onPressed: () {
        //abre otras ventanas de la app
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        backgroundColor: color1,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 252, 250, 250),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(texto),
    );
  }

  Widget botonstf(
    String texto,
    Color color1,
    StatefulWidget screen,
    BuildContext context,
  ) {
    return ElevatedButton(
      onPressed: () {
        //abre otras ventanas de la app
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        backgroundColor: color1,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 252, 250, 250),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(texto),
    );
  }
}
