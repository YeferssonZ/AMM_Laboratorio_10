import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi App de Música'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Hero(
                tag: 'music_image', // Tag para identificar la imagen
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return MusicImageDetail(); // Pantalla de imagen detallada
                    }));
                  },
                  child: Image.asset(
                    'assets/images/animals.jpg',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
            Text(
              'Descubre Nueva Música',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Explora y disfruta de tu música favorita en cualquier momento y lugar.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Cambia el color del botón
              ),
              child: Text(
                'Explorar Música',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Acción al presionar el botón
              },
              style: TextButton.styleFrom(
                primary: Colors.blue, // Cambia el color del botón
              ),
              child: Text(
                'Ver tus Listas de Reproducción',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MusicImageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Volver a la pantalla principal
          },
          child: Hero(
            tag: 'music_image',
            child: Image.asset('assets/images/animals.jpg'),
          ),
        ),
      ),
    );
  }
}
