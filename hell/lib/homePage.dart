import 'package:flutter/material.dart';
import 'day.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'What I Did Wrong Today',
          textAlign: TextAlign.left,
        ),
      ),
      body: Container(
        color: Colors.blueGrey[50],
        padding: EdgeInsets.only(left: 40, top: 40, right: 40),
        child: GridView.count(
          crossAxisCount: 7,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(31, (index) {
            return Center(
              child: GestureDetector(
                child: Container(
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.blueGrey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => DayPage()));

                  print("taped ${index + 1}");
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
