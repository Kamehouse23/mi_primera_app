import 'package:flutter/material.dart';
import '../models/curso.dart';
import 'login_view.dart';
import 'detail_view.dart';
class HomeView extends StatelessWidget {
  final String usuario;

  const HomeView({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido, $usuario'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginView()),
              );
            },
          ),
        ],
      ),
     body: ListView.builder(
        itemCount: cursosDemo.length,
        itemBuilder: (context, index) {
          final curso = cursosDemo[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                curso.nombre,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('${curso.instructor} - ${curso.horas} horas'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailView(curso: curso),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
