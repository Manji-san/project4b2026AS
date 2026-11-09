import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  final Map<String, String> pets = const {
    'Mugroso': 'assets/chikorita.jpg',
    'Pachon': 'assets/psyduck.jpg',
    'Negra': 'assets/snorlax.jpg',
  };

  final Map<String, String> personajes = const {
    'Manjiro': 'assets/manjiro.jpg',
    'Naruto': 'assets/naruto.jpg',
    'Sailor moon': 'assets/sailor.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 4', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 59, 93, 95),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          ...pets.entries.map((pet) {
            return crearTile(
              context, // Pasamos el contexto necesario para el AlertDialog
              pet.key, // Título (nombre)
              pet.value, // Ruta de la imagen
              const Color.fromARGB(255, 207, 97, 230), // Color de fondo
              const Color.fromARGB(255, 17, 14, 26), // Color de texto
            );
          }),

          const Divider(),

          ...personajes.entries.map((personaje) {
            return crearTile(
              context, // Pasamos el contexto necesario para el AlertDialog
              personaje.key, // Título (nombre)
              personaje.value, // Ruta de la imagen
              Colors.deepOrangeAccent, // Color de fondo
              Colors.white, // Color de texto
            );
          }),
        ],
      ),
    );
  }

  Widget crearTile(
    BuildContext context,
    String titulo,
    String imagenPath,
    Color colorTile,
    Color colorTexto,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                imagenPath,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image, size: 40),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                titulo,
                style: TextStyle(
                  color: colorTexto,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: colorTexto),
        tileColor: colorTile,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext dialogContext) {
              return AlertDialog(
                title: Text(titulo),
                content: Image.asset(
                  imagenPath,
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(dialogContext);
                    },
                    child: const Text('Cerrar'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
