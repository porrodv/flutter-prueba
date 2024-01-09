import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bonus App Test',
      home: MyHomePage(title: "Bienvenido "),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _heart = const Icon(Icons.favorite_border, color: Colors.yellow);
  bool _liked = false;
  final String _userName = "Alexander";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (RichText(
            text: TextSpan(
                text: widget.title!,
                style: const TextStyle(color: Colors.white, fontSize: 18),
                children: [
              TextSpan(
                  text: _userName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold))
            ]))),
        backgroundColor: const Color.fromARGB(255, 0, 26, 255),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {
                _likedChange();
              },
              icon: _heart)
        ],
      ),
      drawer: const Drawer(
          backgroundColor: Colors.black,
          child: Column(
            children: [
              DrawerHeader(
                  child: Text("Menú",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold))),
              Text("Opción 1"),
              Text("Opción 2"),
              Text("Opción 3"),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _likedChange();
        },
      ),
    );
  }

  void _likedChange() {
    setState(() {
      if (_liked) {
        _heart = const Icon(Icons.favorite_border, color: Colors.yellow);
        _liked = false;
      } else {
        _heart = const Icon(Icons.favorite, color: Colors.yellow);
        _liked = true;
      }
    });
  }
}
