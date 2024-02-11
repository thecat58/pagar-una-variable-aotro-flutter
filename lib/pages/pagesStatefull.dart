// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class pageStatefull extends StatelessWidget {
  final String texto;
  const pageStatefull(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pageStatefull"),
      ),
      body: Center(
        child: Text(texto),
      ),
    );
  }
}
