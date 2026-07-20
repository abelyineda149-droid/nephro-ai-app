import 'package:flutter/material.dart';

void main() {
  runApp(const NephroAIApp());
}

class NephroAIApp extends StatelessWidget {
  const NephroAIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NephroAI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NephroHomePage(),
    );
  }
}

class NephroHomePage extends StatelessWidget {
  const NephroHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NephroAI Health Monitor'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Welcome to NephroAI',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Action for scanning or lab logging
              },
              icon: const Icon(Icons.camera_alt),
              label: const Text('Scan Lab Results'),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {
                // Action for pregnancy tracking or health logs
              },
              icon: const Icon(Icons.favorite),
              label: const Text('Health & Pregnancy Tracking'),
            ),
          ],
        ),
      ),
    );
  }
}
