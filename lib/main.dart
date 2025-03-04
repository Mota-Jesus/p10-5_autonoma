import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MiContenedorApp());

class MiContenedorApp extends StatelessWidget {
  const MiContenedorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ejemplo container"),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.white70, fontSize: 24),
          backgroundColor: const Color(0xffe17dd1),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Jesus Mota Bustillos Mat:1275",
                style: TextStyle(color: Color(0xb3000000), fontSize: 24),
                textAlign: TextAlign.center, // Centra el texto
              ),
              const SizedBox(height: 65),
              // Primer contenedor girado con padding correcto
              Transform.rotate(
                angle: pi / 11,
                child: Padding(
                  // Padding dentro de Transform.rotate
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Container(
                    width: 300,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffe17dd1),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Hola a todos',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
