import 'package:flutter/material.dart';

class pageStateles extends StatelessWidget {
  final String texto;
  const pageStateles(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless pages"),
      ),
      body: Center(
        child: Text(texto),
      ),
    );
  }
}
