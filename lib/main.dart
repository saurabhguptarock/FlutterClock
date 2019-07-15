import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(45, 47, 65, 1),
        child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .24,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    InkWell(
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 100),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(35)),
                        color: Color.fromRGBO(36, 38, 52, 1),
                      ),
                      height: MediaQuery.of(context).size.width * .24,
                      width: MediaQuery.of(context).size.width * .24,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              Icons.timelapse,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              'Clock',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(35)),
                      ),
                      height: MediaQuery.of(context).size.width * .24,
                      width: MediaQuery.of(context).size.width * .24,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              Icons.alarm,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              'Alarm',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(35)),
                      ),
                      height: MediaQuery.of(context).size.width * .24,
                      width: MediaQuery.of(context).size.width * .24,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              Icons.av_timer,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              'Timer',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(35)),
                      ),
                      height: MediaQuery.of(context).size.width * .24,
                      width: MediaQuery.of(context).size.width * .24,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              Icons.timer,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              'Stopwatch',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              VerticalDivider(
                color: Colors.white,
                width: 0, //TODO: Change 1 to 0
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.76,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      Text(
                        'Clock',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 90),
                      ),
                      Text(
                        '19:15',
                        style: TextStyle(fontSize: 55, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      Text(
                        'Fri, 5 Jul',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Clock(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                      ),
                      Text(
                        'Timezone',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      Row(
                        children: <Widget>[
                          Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://cdn.countryflags.com/download/india/flag-svg.svg'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                          ),
                          Text(
                            'UTC+05:30 (IST)',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Divider(
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Automatic timezone',
                            style: TextStyle(color: Colors.white),
                          ),
                          Switch.adaptive(
                            value: true,
                            onChanged: (v) {},
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      fallbackHeight: 250,
    );
  }
}
