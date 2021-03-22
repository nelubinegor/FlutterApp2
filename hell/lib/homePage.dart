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
      body: Container(
        margin: EdgeInsets.only(left: 40, top: 40, right: 40),
        child: GridView.count(
          crossAxisCount: 7,
          children: List.generate(31, (index) {
            return Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(6.0),
                child: Center(
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.circle,
                ),
              ),
            );
          }),
        ),
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
