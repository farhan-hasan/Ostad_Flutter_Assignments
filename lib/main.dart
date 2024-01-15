import 'package:assignment_2/test.dart';
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
  int _counter1 = 1;
  int _counter2 = 1;
  int _counter3 = 1;

  int price1 = 40;
  int price2 = 30;
  int price3 = 20;

  int setPrice1 = 40;
  int setPrice2 = 30;
  int setPrice3 = 20;


  void _incrementCounter() {
    setState(() {
      _counter1++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child:
              Icon(Icons.search)
            ,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text("My Bag", style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Expanded(
                flex: 3,
                child: SingleChildScrollView(scrollDirection: Axis.vertical,
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
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child:
                                      Image.asset(
                                        'images/mouse.jpg',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 25,),
                                        Text("Mouse", style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(height: 5),
                                        Text("Color: Black    Size: M", style: TextStyle(
                                            fontSize: 11
                                        ),),
                                        SizedBox(height: 40,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            IconButton(
                                                onPressed: (){
                                                  if(_counter1==1) {
                                                    return;
                                                  }

                                                  setState(() {
                                                    _counter1--;
                                                    setPrice1 = _counter1*price1;
                                                  });
                                                },
                                                icon: Icon(Icons.remove)
                                            ),
                                            Text("$_counter1"),
                                            IconButton(
                                                onPressed: (){
                                                  if(_counter1==5) {
                                                    showDialog(
                                                        context: context,
                                                        builder: (context) => Center(
                                                          child: Container(
                                                            height: 200,
                                                            width: 200,
                                                            child: Card(
                                                              elevation: 10,
                                                              child: Padding(
                                                                padding: EdgeInsets.all(20),
                                                                child: Column(
                                                                  children: [
                                                                    Text("Congratulations!", style: TextStyle(
                                                                      color: Colors.black,
                                                                      fontSize: 12,
                                                                      fontWeight: FontWeight.bold
                                                                    ),),
                                                                    SizedBox(height: 22,),
                                                                    Text("You have added",style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 12,
                                                                    )),
                                                                    Text("$_counter1"),
                                                                    Text("Mouses in your bag!",style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 12,
                                                                    )),
                                                                    SizedBox(height: 28,),
                                                                    SizedBox(
                                                                      width: double.infinity,
                                                                      height: 30,
                                                                      child: ElevatedButton(
                                                                          onPressed: (){
                                                                            Navigator.of(context).pop();
                                                                          },
                                                                          child: Text("Ok", style: TextStyle(
                                                                              color: Colors.white
                                                                          ),),
                                                                          style: ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.red
                                                                          )
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                    );
                                                    return;
                                                  }
                                                  setState(() {
                                                    _counter1++;
                                                    setPrice1 = _counter1*price1;
                                                  });
                                                },
                                                icon: Icon(Icons.add)
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 111,),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 25,),
                                        Icon(Icons.more_vert),
                                        SizedBox(height: 75),
                                        Text("${setPrice1}\$"),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 2,
                              margin: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          xl: 4,
                          lg: 6,
                          md: 6,
                          sm: 12,
                          xs: 12,
                          child: Container(
                            height: 200,
                            child: Card(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child:
                                      Image.asset(
                                        'images/keyboard.jpg',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 25,),
                                        Text("Keyboard", style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(height: 5),
                                        Text("Color: Black    Size: S", style: TextStyle(
                                            fontSize: 11
                                        ),),
                                        SizedBox(height: 40,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            IconButton(
                                                onPressed: (){
                                                  if(_counter2==1) {
                                                    return;
                                                  }

                                                  setState(() {
                                                    _counter2--;
                                                    setPrice2 = _counter1*price1;
                                                  });
                                                },
                                                icon: Icon(Icons.remove)
                                            ),
                                            Text("$_counter2"),
                                            IconButton(
                                                onPressed: (){
                                                  if(_counter2==5) {
                                                    showDialog(
                                                        context: context,
                                                        builder: (context) => Center(
                                                          child: Container(
                                                            height: 200,
                                                            width: 200,
                                                            child: Card(
                                                              elevation: 10,
                                                              child: Padding(
                                                                padding: EdgeInsets.all(20),
                                                                child: Column(
                                                                  children: [
                                                                    Text("Congratulations!", style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 12,
                                                                        fontWeight: FontWeight.bold
                                                                    ),),
                                                                    SizedBox(height: 22,),
                                                                    Text("You have added",style: TextStyle(
                                                                      color: Colors.black,
                                                                      fontSize: 12,
                                                                    )),
                                                                    Text("$_counter2"),
                                                                    Text("Keyboards in your bag!",style: TextStyle(
                                                                      color: Colors.black,
                                                                      fontSize: 12,
                                                                    )),
                                                                    SizedBox(height: 28,),
                                                                    SizedBox(
                                                                      width: double.infinity,
                                                                      height: 30,
                                                                      child: ElevatedButton(
                                                                          onPressed: (){
                                                                            Navigator.of(context).pop();
                                                                          },
                                                                          child: Text("Ok", style: TextStyle(
                                                                              color: Colors.white
                                                                          ),),
                                                                          style: ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.red
                                                                          )
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                    );
                                                    return;
                                                  }
                                                  setState(() {
                                                    _counter2++;
                                                    setPrice2 = _counter2*price2;
                                                  });
                                                },
                                                icon: Icon(Icons.add)
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 111,),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 25,),
                                        Icon(Icons.more_vert),
                                        SizedBox(height: 75),
                                        Text("${setPrice2}\$"),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 2,
                              margin: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          xl: 4,
                          lg: 6,
                          md: 6,
                          sm: 12,
                          xs: 12,
                          child: Container(
                            height: 200,
                            child: Card(
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child:
                                      Image.asset(
                                        'images/headphone.jpg',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 25,),
                                        Text("Headphone", style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        ),),
                                        SizedBox(height: 5),
                                        Text("Color: Black    Size: L", style: TextStyle(
                                            fontSize: 11
                                        ),),
                                        SizedBox(height: 40,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            IconButton(
                                                onPressed: (){
                                                  if(_counter3==1) {
                                                    return;
                                                  }

                                                  setState(() {
                                                    _counter3--;
                                                    setPrice3 = _counter3*price3;
                                                  });
                                                },
                                                icon: Icon(Icons.remove)
                                            ),
                                            Text("$_counter3"),
                                            IconButton(
                                                onPressed: (){
                                                  if(_counter3==5) {
                                                    showDialog(
                                                        context: context,
                                                        builder: (context) => Center(
                                                          child: Container(
                                                            height: 200,
                                                            width: 200,
                                                            child: Card(
                                                              elevation: 10,
                                                              child: Padding(
                                                                padding: EdgeInsets.all(20),
                                                                child: Column(
                                                                  children: [
                                                                    Text("Congratulations!", style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 12,
                                                                        fontWeight: FontWeight.bold
                                                                    ),),
                                                                    SizedBox(height: 22,),
                                                                    Text("You have added",style: TextStyle(
                                                                      color: Colors.black,
                                                                      fontSize: 12,
                                                                    )),
                                                                    Text("$_counter3"),
                                                                    Text("Headphones in your bag!",style: TextStyle(
                                                                      color: Colors.black,
                                                                      fontSize: 12,
                                                                    )),
                                                                    SizedBox(height: 28,),
                                                                    SizedBox(
                                                                      width: double.infinity,
                                                                      height: 30,
                                                                      child: ElevatedButton(
                                                                          onPressed: (){
                                                                            Navigator.of(context).pop();
                                                                          },
                                                                          child: Text("Ok", style: TextStyle(
                                                                              color: Colors.white
                                                                          ),),
                                                                          style: ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.red
                                                                          )
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                    );
                                                    return;
                                                  }
                                                  setState(() {
                                                    _counter3++;
                                                    setPrice3 = _counter3*price3;
                                                  });
                                                },
                                                icon: Icon(Icons.add)
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 111,),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 25,),
                                        Icon(Icons.more_vert),
                                        SizedBox(height: 75),
                                        Text("${setPrice3}\$"),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 2,
                              margin: EdgeInsets.all(10),
                            ),
                          ),
                        ),

                      ],
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ListTile(
                      leading: Text("Total Amount:", style: TextStyle(
                        fontSize: 12
                      ),),
                      trailing: Text("${setPrice1 + setPrice2 + setPrice3}\$", style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: (){
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Congratulations on your order!"))
                        );
                      },
                      child: Text("Checkout", style: TextStyle(
                        color: Colors.white
                      ),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red
                      )
                      ),
                ),
                ),
            ]
        ),
      )
    );
  }
}
