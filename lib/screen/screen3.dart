import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificaciones'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: 2, // Número de notificaciones
        itemBuilder: (BuildContext context, int index) {
          return _buildNotificationCard(
            title: 'Título de la Notificación $index',
            description: 'Descripción de la notificación $index.',
            imageUrl: 'URL_de_la_imagen', // Reemplaza con la URL de la imagen circular
          );
        },
      ),
    );
  }

  Widget _buildNotificationCard({
    required String title,
    required String description,
    required String imageUrl,
  }) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4.0,
      child: ListTile(
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage(imageUrl), // Usa la URL de la imagen circular
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(description),
      ),
    );
  }
}

