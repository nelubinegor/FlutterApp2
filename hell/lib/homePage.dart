import 'package:flutter/material.dart';
import 'day.dart';

int badStuff = 4;

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
      body: ListView(children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Colors.blueGrey[50],
              padding: EdgeInsets.only(left: 40, top: 40, right: 40),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DayPage()));

                          print("taped ${index + 1}");
                        },
                      ),
                    );
                  }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WOW, You've done a lot of shit today",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "To be Exact, you do $badStuff bad things on average every day",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
