import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutterapp/main.dart';
import 'package:flutterapp/router/Router.dart';
import 'package:flutterapp/comnWidget/MusicInfo.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              width: double.infinity,
              height: 208,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 450,
                    height: 42,
                    decoration: BoxDecoration(
                        color: Colors.black87
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () => {
                              Navigator.pushNamed(context, '/musicList', arguments: {'userId': 1, 'opt': '1','title': 'Liked History'})
                            },
                            child : Text('liked History',style: TextStyle(color: Colors.white) )
                          ),
                        ),
                        Icon(Icons.navigate_next,color: Colors.white,)
                      ],
                    )
                  ),
                  SizedBox(height: 0.2,),
                  Container(
                      width: 450,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.black87
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: TextButton(
                                onPressed: () => {
                                  Navigator.pushNamed(context, '/musicList', arguments: {'userId': 1, 'opt': '2','title': 'PlayList'})
                                },
                                child : Text('playList',style: TextStyle(color: Colors.white) )
                            ),
                          ),
                          Icon(Icons.navigate_next,color: Colors.white,)
                        ],
                      )
                  ),
                  SizedBox(height: 0.2,),
                  Container(
                      width: 450,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.black87
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10), // 모든 방향에 10의 마진 추가
                            child: Text(
                              'albums',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(Icons.navigate_next,color: Colors.white,)
                        ],
                      )
                  ),
                  SizedBox(height: 0.2,),
                  Container(
                      width: 450,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.black87
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10), // 모든 방향에 10의 마진 추가
                            child: Text(
                              'follow',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(Icons.navigate_next,color: Colors.white,)
                        ],
                      )
                  ),
                  SizedBox(height: 0.2,),
                  Container(
                      width: 450,
                      height: 42,
                      decoration: BoxDecoration(
                          color: Colors.black87
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10), // 모든 방향에 10의 마진 추가
                            child: Text(
                              'setting',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(Icons.navigate_next,color: Colors.white,)
                        ],
                      )
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: Text(
                    'Recently played',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  child: TextButton(
                      onPressed: () => {
                        print('see all 뻐튼 이벤트')
                      },
                      child: Text( 'see all',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w900))
                  ),
                ),
              ],

            ),
            Container(
              margin: EdgeInsets.all(5),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
              ),
              child: Center(
                  child: CarouselSlider(
                    items: [
                      Container(
                        width: 130,
                        child: Image.asset('assets/common.jpeg',fit: BoxFit.fill
                          ,),
                      ),
                      Container(
                        width: 130,
                        child: Image.asset('assets/common.jpeg',fit: BoxFit.fill
                          ,),
                      ),
                      Container(
                        width: 130,
                        child: Image.asset('assets/common.jpeg',fit: BoxFit.fill
                          ,),
                      ),
                      Container(
                        width: 130,
                        child: Image.asset('assets/common.jpeg',fit: BoxFit.fill
                          ,),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 130, // 높이 설정
                      enlargeCenterPage: false, // 가운데 아이템 크게 표시
                      autoPlay: false, // 자동 재생 설정
                      enableInfiniteScroll: false, // 무한 스크롤 설정
                      autoPlayInterval: Duration(seconds: 5), // 자동 재생 간격 설정
                      autoPlayAnimationDuration: Duration(milliseconds: 1500), // 자동 재생 애니메이션 지속 시간 설정
                        initialPage: 1,
                      viewportFraction: 0.4, // 화면에 표시될 아이템의 너비 비율 설정
                        pageSnapping : false
                    ),
                  )
              ),
            ),
            SizedBox(height: 3),
            Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Text(
                  'Listening history',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: TextButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, '/musicList',
                        arguments: {'userId': 1, 'opt': '3','title': 'Listening history'}),
                  },
                  child: Text( 'see all',style: TextStyle(color: Colors.white, fontSize: 12,fontWeight: FontWeight.w900))
                ),
              ),
            ],
          ),
        ),
            Container(
              margin: EdgeInsets.all(5),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  musicInfo(
                    context: context,
                    imageWidth: 0.15,
                    containerWidth: 0.25,
                    containerHeight: 60.0,
                    fontSize1: 12.0,
                    fontSize2: 10.0,
                  ),
                  SizedBox(height: 0.1),
                  musicInfo(
                    context: context,
                    imageWidth: 0.15,
                    containerWidth: 0.25,
                    containerHeight: 60.0,
                    fontSize1: 12.0,
                    fontSize2: 10.0,
                  ),
                  SizedBox(height: 0.1),
                  musicInfo(
                    context: context,
                    imageWidth: 0.15,
                    containerWidth: 0.25,
                    containerHeight: 60.0,
                    fontSize1: 12.0,
                    fontSize2: 10.0,
                  ),
                  SizedBox(height: 0.1),
                  musicInfo(
                    context: context,
                    imageWidth: 0.15,
                    containerWidth: 0.25,
                    containerHeight: 60.0,
                    fontSize1: 12.0,
                    fontSize2: 10.0,
                  ),
                  SizedBox(height: 0.1),
                  musicInfo(
                    context: context,
                    imageWidth: 0.15,
                    containerWidth: 0.25,
                    containerHeight: 60.0,
                    fontSize1: 12.0,
                    fontSize2: 10.0,
                  ),
                  SizedBox(height: 0.1),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
