import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Customer Card Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "http://rsh.co.id/assets/images/pattern/p7.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4)),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://www.pegipegi.com/travel/wp-content/uploads/2018/12/shutterstock_1217986393.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Column(
                        children: [
                          Text(
                            "Beautiful Sunset at Paddy Field",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFFF56D5D), fontSize: 20),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Posted On,",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text(
                                  "Feb 7, 2021",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFFF56D5D), fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Spacer(
                                flex: 10,
                              ),
                              Icon(
                                Icons.thumb_up,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                "99",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(
                                flex: 5,
                              ),
                              Icon(
                                Icons.comment,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                "888",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(
                                flex: 10,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
