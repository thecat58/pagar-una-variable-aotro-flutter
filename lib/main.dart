import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _textoController = TextEditingController(text: '');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material app bar'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _textoController,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.green,
                filled: true,
                hintText: 'ingresa informacion',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PageStateles(_textoController.text)
              ));
            },
            child: Text('enviar'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PageStateles(_textoController.text)
              ));
            },
            child: Text('enviar a otro'),
          )
        ],
      ),
    );
  }
}

class PageStateles extends StatelessWidget {
  final String text;
  const PageStateles(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageStateles'),
      ),
      body: Center(
        child: Text('Texto pasado: $text'),
      ),
    );
  }
}
