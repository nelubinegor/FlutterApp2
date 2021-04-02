import 'package:flutter/material.dart';
import 'listrepo.dart';

int badThings = 0;

class BadList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Today I:')),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: BadThings(),
          ),
        ],
      ),
    );
  }
}

class BadThings extends StatefulWidget {
  @override
  createState() => BadThingsState();
}

class BadThingsState extends State<BadThings> {
  List<String> _badItems = [];

  void _addBadItem(String badThing) {
    if (badThing.length > 0) {
      setState(() => _badItems.add(badThing));
    }
  }

  Widget _buildBadList() {
    return ListView.builder(
      itemCount: _badItems.length,
      itemBuilder: (context, index) {
        return _buildBadThing(_badItems[index]);
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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: 24),
          Text(
            'Damn, $badThings bad things in one day?',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.blueGrey,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: _buildBadList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: pushAddBad,
          tooltip: 'Add a fuck up',
          child: Icon(Icons.add)),
    );
  }

  void pushAddBad() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Scaffold(
          appBar: AppBar(title: Text('Add a fuck up')),
          body: TextField(
            autofocus: true,
            onSubmitted: (val) {
              _addBadItem(val);
              Navigator.pop(context);
              badThings++;
              print('$badThings');
            },
            decoration: InputDecoration(
                hintText: 'Enter the worst you\'ve done today',
                contentPadding: const EdgeInsets.all(20.0)),
          ));
    }));
  }
}
