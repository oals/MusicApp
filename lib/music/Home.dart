import 'package:carousel_slider/carousel_slider.dart';
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
                child: CarouselSlider(
                  items: [
                    // Your items (widgets or images) here
                    Container(color: Colors.red),
                    Container(color: Colors.blue),
                    Container(color: Colors.green),
                    Container(color: Colors.black),
                  ],
                  options: CarouselOptions(
                    height: 150, // 높이 설정
                    enlargeCenterPage: true, // 가운데 아이템 크게 표시
                    autoPlay: true, // 자동 재생 설정
                    enableInfiniteScroll: true, // 무한 스크롤 설정
                    autoPlayInterval: Duration(seconds: 5), // 자동 재생 간격 설정
                    autoPlayAnimationDuration: Duration(milliseconds: 1500), // 자동 재생 애니메이션 지속 시간 설정
                    viewportFraction: 0.8, // 화면에 표시될 아이템의 너비 비율 설정
                  ),
                ) ,
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
