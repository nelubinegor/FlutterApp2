import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'What I Did Wrong Today',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Text('Calendar Here'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Text('New Habit');
        },
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
