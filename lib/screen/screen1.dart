
import 'package:fl3_componentes/screen/listview1_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Screen1());
}

class User {
  final String name;
  final String email;
  final String photoUrl;
  final String dateOfBirth;
  final String address;
  final String academicLevel;
  final String description;

  User(
      this.name,
      this.email,
      this.photoUrl,
      this.dateOfBirth,
      this.address,
      this.academicLevel,
      this.description,
      );
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil de Usuario',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ProfileScreen(
        user: User(
          'Francisco Lopez Briones',
          'franlops@gmail.com',
          'assets/paquito_perfil.png',
          '01/15/1990',
          '123 Main St, Ciudad',
          'Licenciado en Informática',
          'Apasionado por la programación y la tecnología.',
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final User user;

  ProfileScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListView1Screen()),
            ); // Navegar de vuelta a la pantalla anterior
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage(user.photoUrl),
            ),
            SizedBox(height: 20.0),
            Text(
              user.name,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              user.email,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Fecha de Nacimiento: ${user.dateOfBirth}',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Dirección: ${user.address}',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Nivel Académico: ${user.academicLevel}',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Descripción: ${user.description}',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
