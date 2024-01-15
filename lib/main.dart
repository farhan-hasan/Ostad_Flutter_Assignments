import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'ResponsiveList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("News Feed"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                      xl: 4,
                      lg: 6,
                      md: 6,
                      sm: 12,
                      xs: 12,
                      child: Container(
                        height: 200,
                        child: Card(
                          elevation: 20,
                          child: Center(
                            child: Image.asset('images/news1.png'),
                          ),
                        ),
                      )),
                  ResponsiveGridCol(
                      xl: 4,
                      lg: 6,
                      md: 6,
                      sm: 12,
                      xs: 12,
                      child: Container(
                        height: 200,
                        child: Card(
                          elevation: 20,
                          child: Center(
                            child: Image.asset('images/news2.png'),
                          ),
                        ),
                      )),
                  ResponsiveGridCol(
                      xl: 4,
                      lg: 6,
                      md: 6,
                      sm: 12,
                      xs: 12,
                      child: Container(
                        height: 200,
                        child: Card(
                          elevation: 20,
                          child: Center(
                            child: Image.asset('images/news3.png'),
                          ),
                        ),
                      )),
                  ResponsiveGridCol(
                      xl: 4,
                      lg: 6,
                      md: 6,
                      sm: 12,
                      xs: 12,
                      child: Container(
                        height: 200,
                        child: Card(
                          elevation: 20,
                          child: Center(
                            child: Image.asset('images/news4.png'),
                          ),
                        ),
                      )),
                  ResponsiveGridCol(
                      xl: 4,
                      lg: 6,
                      md: 6,
                      sm: 12,
                      xs: 12,
                      child: Container(
                        height: 200,
                        child: Card(
                          elevation: 20,
                          child: Center(
                            child: Image.asset('images/news5.png'),
                          ),
                        ),
                      )),
                  ResponsiveGridCol(
                      xl: 4,
                      lg: 6,
                      md: 6,
                      sm: 12,
                      xs: 12,
                      child: Container(
                        height: 200,
                        child: Card(
                          elevation: 20,
                          child: Center(
                            child: Image.asset('images/news6.png'),
                          ),
                        ),
                      )),
                ],
              )),
        ));
  }
}
