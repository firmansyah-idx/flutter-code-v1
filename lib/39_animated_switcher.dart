import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOn = false;

  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(color: Colors.black, width: 3),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Switcher"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSwitcher(
              child: myWidget,
              duration: Duration(seconds: 1),
              transitionBuilder: (child, animation) => ScaleTransition(
                scale: animation,
                child: child,
              ),
            ),
            Switch(
              activeColor: Colors.green,
              inactiveTrackColor: Colors.red,
              inactiveThumbColor: Colors.red[200],
              value: isOn,
              onChanged: (val) {
                isOn = val;
                setState(() {
                  if (isOn) {
                    myWidget = Container(
                      key: ValueKey(1),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                    );
                    // myWidget = SizedBox(
                    //   width: 200,
                    //   height: 100,
                    //   child: Center(
                    //     child: Text(
                    //       "Switched : ON",
                    //       style: TextStyle(
                    //           color: Colors.green,
                    //           fontWeight: FontWeight.w700,
                    //           fontSize: 20),
                    //     ),
                    //   ),
                    // );
                  } else {
                    myWidget = Container(
                      key: ValueKey(2),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                    );
                  }
                });
              },
            )
          ],
        )),
      ),
    );
  }
}
