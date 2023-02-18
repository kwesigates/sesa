import 'package:flutter/material.dart';
import 'package:sesa/location/location.dart';

class RecyclablesPage extends StatelessWidget {
  const RecyclablesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recyclables'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'What type of recyclable do you have?',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LocationPage('Newspapers')),
              );
            },
            child: const Text('Newspapers'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LocationPage('Iron')),
              );
            },
            child: const Text('Iron'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LocationPage('Wood')),
              );
            },
            child: const Text('Wood'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LocationPage('Cloth')),
              );
            },
            child: const Text('Cloth'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LocationPage('Other')),
              );
            },
            child: const Text('Other'),
          ),
        ],
      ),
    );
  }
}
