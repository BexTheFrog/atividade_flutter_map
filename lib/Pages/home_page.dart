import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("APP MAP", style: TextStyle(fontWeight: FontWeight.bold)),
            Icon(Icons.map_rounded),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                try {
                  Navigator.pushNamed(context, '/mapa');
                } catch (e) {
                  print(e);
                }
              },
              child: Text("Acessar o Mapa"),
            ),
          ],
        ),
      ),
    );
  }
}
