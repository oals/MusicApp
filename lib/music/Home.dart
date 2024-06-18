import 'package:flutter/material.dart';
import 'package:flutterapp/music/TopMusic.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Container(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child : Column(
            children: [
              Container(
                width: screenWidth * 0.979,
                height: screenHeight * 0.3,
                color: Colors.white,
                // child: MyAppPageView(controller: _controller),
              ),
              Container(
                width: double.infinity,
                height: screenHeight * 0.25,
                color: Colors.black87,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () {
                          // 클릭 이벤트 처리
                          Navigator.pop(context); // Drawer 닫기
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TopMusic()));
                        },
                        child: Container(
                          width: screenWidth * 0.48,
                          height: screenHeight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        )
                    ),
                    GestureDetector(
                        onTap: () {
                          // 클릭 이벤트 처리
                          Navigator.pop(context); // Drawer 닫기
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TopMusic()));
                          print('박스가 클릭되었습니다.');
                        },
                        child: Container(
                          width: screenWidth * 0.48,
                          height: screenHeight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        )
                    ),

                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: screenHeight * 0.25,
                color: Colors.black87,
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () {
                          // 클릭 이벤트 처리
                          Navigator.pop(context); // Drawer 닫기
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TopMusic()));
                          print('박스가 클릭되었습니다.');
                        },
                        child: Container(
                          width: screenWidth * 0.48,
                          height: screenHeight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        )
                    ),
                    GestureDetector(
                        onTap: () {
                          // 클릭 이벤트 처리
                          Navigator.pop(context); // Drawer 닫기
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TopMusic()));
                          print('박스가 클릭되었습니다.');
                        },
                        child: Container(
                          width: screenWidth * 0.48,
                          height: screenHeight,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                        )
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      )

    );
  }
}
