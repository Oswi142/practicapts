import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Principal'),
      ),
      backgroundColor: Colors.teal,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              title: Text('Bolivia derrotó a Andorra en territorio africano'),
              subtitle: Column(
                children: [
                  SizedBox(height: 8),
                  Image.asset('assets/images/noticia1.jpg'),
                  SizedBox(height: 8),
                  Text('Bolivia derrotó a Andorra 1-0 y así cierra la fecha de amistosos, en el estadio 19 de mayo de 1956, en la ciudad de Annaba. El único tanto del encuentro lo hizo Ramiro Vaca a los 12’.'), // Descripción de la noticia
                ],
              ),
              onTap: () {
              },
            ),
          ),
          SizedBox(height: 16),
          Card(
            child: ListTile(
              title: Text('Una nueva estrella proyecta todo un espectáculo de luz cósmica captado por Hubble'), // Título de la noticia
              subtitle: Column(
                children: [
                  SizedBox(height: 8),
                  Image.asset('assets/images/noticia2.jpg'),
                  SizedBox(height: 8),
                  Text('El telescopio espacial Hubble, de la NASA y la Agencia Espacial Europea (AEE), ha captado una impactante imagen de todo un espectáculo cósmico, en el que se ven unos chorros que emergen del corazón de una estrella recién formada y atraviesan el espacio, cortando el gas y el polvo de una nebulosa brillante.'), // Descripción de la noticia
                ],
              ),
              onTap: () {
              },
            ),
          ),
        ],
      ),
    );
  }
}
