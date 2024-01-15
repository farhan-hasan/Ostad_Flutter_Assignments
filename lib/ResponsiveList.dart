import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'main.dart';

class ResponsiveList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
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
                                onPressed: (){},
                                icon: Icon(Icons.remove)
                            ),
                            Text("20"),
                            IconButton(
                                onPressed: (){},
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
                        Text("20\$"),
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
                                onPressed: (){},
                                icon: Icon(Icons.remove)
                            ),
                            Text("20"),
                            IconButton(
                                onPressed: (){},
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
                        Text("20\$"),
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
                                onPressed: (){},
                                icon: Icon(Icons.remove)
                            ),
                            Text("20"),
                            IconButton(
                                onPressed: (){},
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
                        Text("20\$"),
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
    );
  }
}
