import 'package:flutter/material.dart';

class BadList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('How much Ive done today')),
        body: BadThings());
  }
}

class BadThings extends StatefulWidget {
  @override
  createState() => BadThingsState();
}

class BadThingsState extends State<BadThings> {
  List<String> _badItems = [];

  void _addBadItem(String task) {
    if (task.length > 0) {
      setState(() => _badItems.add(task));
    }
  }

  Widget _buildBadList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index <= _badItems.length) {
          return _buildBadThing(_badItems[index]);
        }
        return Container();
      },
    );
  }

  Widget _buildBadThing(String badText) {
    return ListTile(
      title: Text(badText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBadList(),
      floatingActionButton: FloatingActionButton(
          onPressed: _pushAddTodoScreen,
          tooltip: 'Add a fuck up',
          child: Icon(Icons.add)),
    );
  }

  void _pushAddTodoScreen() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Scaffold(
          appBar: AppBar(title: Text('Add a fuck up')),
          body: TextField(
            autofocus: true,
            onSubmitted: (val) {
              _addBadItem(val);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
                hintText: 'Enter the worst you\'ve done today',
                contentPadding: const EdgeInsets.all(20.0)),
          ));
    }));
  }
}
