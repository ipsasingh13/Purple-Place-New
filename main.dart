
import 'package:flutter/material.dart';

void main() => runApp(const PurplePlaceApp());

class PurplePlaceApp extends StatelessWidget {
  const PurplePlaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Purple Place Deluxe',
      theme: ThemeData(
        colorSchemeSeed: Colors.purple,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int score = 0;

  void addScore() => setState(() => score += 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Purple Place Deluxe - Score: $score')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: addScore,
              child: const Text('Cake Challenge'),
            ),
            ElevatedButton(
              onPressed: addScore,
              child: const Text('Memory Match'),
            ),
            ElevatedButton(
              onPressed: addScore,
              child: const Text('Fashion Studio'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Upgraded Purble Place inspired mobile game starter project.',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
