import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DayPage extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '31 March 2021',
          textAlign: TextAlign.left,
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Text(
              'Things I did wrong today:',
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          // buildBadList(),
          TodoList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pushAddTodoScreen(),
        // _addBadItem,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}

void _pushAddTodoScreen() {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return Scaffold(
        appBar: AppBar(title: Text('Add a fuck up')),
        body: TextField(
          autofocus: true,
          onSubmitted: (val) {
            _addTodoItem(val);
            Navigator.pop(context); // Close the add todo screen
          },
          decoration: InputDecoration(
              hintText: 'Enter something to do...',
              contentPadding: const EdgeInsets.all(16.0)),
        ));
  }));
}
