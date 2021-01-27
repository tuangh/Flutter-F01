import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        color: Colors.white,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child:
        Stack(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  flex: 12,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                                flex: 3,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.orange,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.lightBlueAccent,
                                      ),
                                    )
                                  ],
                                )
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.pinkAccent,
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.greenAccent,
                                  ),
                                ),

                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.yellow,
                                  ),
                                )
                              ],),

                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.yellow,
                          )),
                      Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Expanded(
                  flex: 20,
                  child: Container(
                    color: Colors.pinkAccent,
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 14,
                  child: Container(
                    color: Colors.pinkAccent,
                  ),
                )
              ],
            ),
            Container(
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacer(
                          flex: 20,
                        ),
                        Expanded(
                          flex: 9,
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              color: Colors.black26,
                            ),
                          )
                        ),
                        Spacer(
                          flex: 12,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),


      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
