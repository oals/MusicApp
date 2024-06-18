import 'package:flutter/material.dart';


class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key, required this.onBottomTap, required this.currentIndex});

  final void Function(int index) onBottomTap; // onTap 함수 선언
  final int currentIndex; // 현재 선택된 인덱스

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black87,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 0.2,color: Colors.white)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                onBottomTap(0);
              },
              child: SizedBox(
                width: 50,
                child: Container(
                  margin: EdgeInsets.only(top:6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.home,color: Colors.white,),
                      SizedBox(height: 8),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onBottomTap(1);
              },
              child: SizedBox(
                width: 50,
                child: Container(
                  margin: EdgeInsets.only(top:6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.feed_rounded,color: Colors.white,),
                      SizedBox(height: 8),
                      Text(
                        'Feed',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onBottomTap(2);
              },
              child: SizedBox(
                width: 50,
                child: Container(
                  margin: EdgeInsets.only(top:6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.search,color: Colors.white,),
                      SizedBox(height: 8),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onBottomTap(3);
              },
              child: SizedBox(
                width: 50,
                child: Container(
                  margin: EdgeInsets.only(top:6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.library_music,color: Colors.white,),
                      SizedBox(height: 8),
                      Text(
                        'Library',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                onBottomTap(4);
              },
              child: SizedBox(
                width: 50,
                child: Container(
                  margin: EdgeInsets.only(top:6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.warning,color: Colors.white,),
                      SizedBox(height: 8),
                      Text(
                        'Test',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      )

    );
  }


}
