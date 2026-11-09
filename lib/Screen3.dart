import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 3', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 59, 93, 95),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            colocarImagen(1),
            SizedBox(width: 30),
            colocarImagen(2),
            SizedBox(width: 30),
            colocarImagen(3),
            SizedBox(width: 30),
          ],
        ),
      ),
    );
  }

  Widget colocarImagen(int numImagen) {
    String image = '';

    switch (numImagen) {
      case 1:
        image = 'assets/chikorita.jpg';
        break;
      case 2:
        image = 'assets/psyduck.jpg';
        break;
      case 3:
        image = 'assets/snorlax.jpg';
        break;
    }

    return Image.asset(image, width: 90, height: 90, fit: BoxFit.cover);
  }
}
