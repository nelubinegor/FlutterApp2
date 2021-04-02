import 'package:flutter/material.dart';
//import 'day.dart';
import 'day_02.dart';

int badStuff = 4;
int monthlyStuff = 135;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
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
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${index + 1}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.blueGrey,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 6),
                                DotBar(),
                              ],
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
                              builder: (context) => BadList()));

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
                    "Wow, You've done a lot of shit this day",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w800,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "$badStuff bad things on average every day",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "$monthlyStuff bad things this month",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

class DotBar extends StatefulWidget {
  @override
  _DotBarState createState() => _DotBarState();
}

class _DotBarState extends State<DotBar> {
  bool show1 = true;
  bool show2 = true;
  bool show3 = true;
  bool show4 = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 6,
          width: 6,
          decoration: BoxDecoration(
            color: (show1 ? Colors.red[100] : Color.fromRGBO(0, 0, 0, 0.0)),
          ),
        ),
        Container(
          height: 6,
          width: 6,
          decoration: BoxDecoration(
            color: (show2 ? Colors.red[200] : Color.fromRGBO(0, 0, 0, 0.0)),
          ),
        ),
        Container(
          height: 6,
          width: 6,
          decoration: BoxDecoration(
            color: (show3 ? Colors.red[300] : Color.fromRGBO(0, 0, 0, 0.0)),
          ),
        ),
        Container(
          height: 6,
          width: 6,
          decoration: BoxDecoration(
            color: (show4 ? Colors.red[400] : Color.fromRGBO(0, 0, 0, 0.0)),
          ),
        )
      ],
    );
  }
}
