import 'package:flutter/material.dart';
import 'views/login_view.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cursos ADSO',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const LoginView(),
    );
  }
}