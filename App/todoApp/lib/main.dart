import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todoApp/ui/Notes/notes_page.dart';
import 'models/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Todo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Container(
          color: backgroundColor,
          child: Scaffold(
            body: Stack(children: <Widget>[
              TabBarView(
                children: [
                  NotesPage(),
                  new Container(),
                  new Container(),
                  new Container(),
                ],
              ),
              Container(
                  padding: EdgeInsets.only(left: 40),
                  height: 165,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Notes",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(),
                    ],
                  )),

                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(top: 130, left: MediaQuery.of(context).size.width*0.5-35),

                    child: FloatingActionButton(
                      backgroundColor: purple1,
                      child: Icon(Icons.add, size: 40),
                      onPressed: () {},
                    ),
                  ),


            ]),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: TabBar(
                tabs: [
                  Tab(
                    icon: new Icon(Icons.home),
                  ),
                  Tab(
                    icon: new Icon(Icons.rss_feed),
                  ),
                  Tab(
                    icon: new Icon(Icons.perm_identity),
                  ),
                  Tab(
                    icon: new Icon(Icons.settings),
                  )
                ],
                labelColor: purple1,
                unselectedLabelColor: purpleShade1,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: purple1,
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
