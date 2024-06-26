import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

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
                          margin: EdgeInsets.all(10), // 모든 방향에 10의 마진 추가
                          child: Text(
                            'liked History',
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
                              'playlist',
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
                color: Colors.blue,
              ),
              child: Center(
                  child: CarouselSlider(
                    items: [
                      // Your items (widgets or images) here
                      Container(color: Colors.red),
                      Container(color: Colors.yellow),
                      Container(color: Colors.green),
                      Container(color: Colors.black),
                    ],
                    options: CarouselOptions(
                      height: 130, // 높이 설정
                      enlargeCenterPage: true, // 가운데 아이템 크게 표시
                      autoPlay: false, // 자동 재생 설정
                      enableInfiniteScroll: false, // 무한 스크롤 설정
                      autoPlayInterval: Duration(seconds: 5), // 자동 재생 간격 설정
                      autoPlayAnimationDuration: Duration(milliseconds: 1500), // 자동 재생 애니메이션 지속 시간 설정
                      viewportFraction: 0.5, // 화면에 표시될 아이템의 너비 비율 설정
                    ),
                  )
              ),
            ),
            SizedBox(height: 5),
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
                    print('see all 뻐튼 이벤트')
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
              height: 208,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    color: Colors.black87,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2, // Reduced width
                          height: 50, // Reduced height
                          color: Colors.black12,
                          padding: EdgeInsets.all(2),
                          child: Image.asset(
                            'assets/flutterLogo.png',
                            width: MediaQuery.of(context).size.width * 0.12, // Reduced width
                            height: 50, // Reduced height
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            height: 52, // Reduced height
                            color: Colors.black12,
                            margin: EdgeInsets.all(2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '공공구 - 회색도시',
                                  style: TextStyle(fontSize: 10, color: Colors.white), // Further reduced fontSize
                                ),
                                Text(
                                  'Admin',
                                  style: TextStyle(fontSize: 8, color: Colors.white), // Further reduced fontSize
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '4:19',
                                      style: TextStyle(fontSize: 8, color: Colors.white), // Further reduced fontSize
                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      'Now',
                                      style: TextStyle(fontSize: 8, color: Colors.red), // Further reduced fontSize
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 35, // Further reduced width
                          height: 50, // Reduced height
                          color: Colors.black26,
                          child: IconButton(
                            onPressed: () {
                              // Handle the IconButton tap event separately
                            },
                            icon: Icon(Icons.favorite, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.1),
                  Container(
                    width: double.infinity,
                    color: Colors.black87,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2, // Reduced width
                          height: 50, // Reduced height
                          color: Colors.black12,
                          padding: EdgeInsets.all(2),
                          child: Image.asset(
                            'assets/flutterLogo.png',
                            width: MediaQuery.of(context).size.width * 0.12, // Reduced width
                            height: 50, // Reduced height
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            height: 52, // Reduced height
                            color: Colors.black12,
                            margin: EdgeInsets.all(2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '공공구 - 회색도시',
                                  style: TextStyle(fontSize: 10, color: Colors.white), // Further reduced fontSize
                                ),
                                Text(
                                  'Admin',
                                  style: TextStyle(fontSize: 8, color: Colors.white), // Further reduced fontSize
                                ),
                                Text(
                                  '4:19',
                                  style: TextStyle(fontSize: 8, color: Colors.white), // Further reduced fontSize
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 35, // Further reduced width
                          height: 50, // Reduced height
                          color: Colors.black26,
                          child: IconButton(
                            onPressed: () {
                              // Handle the IconButton tap event separately
                            },
                            icon: Icon(Icons.favorite_border, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.1),
                  Container(
                    width: double.infinity,
                    color: Colors.black87,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2, // Reduced width
                          height: 50, // Reduced height
                          color: Colors.black12,
                          padding: EdgeInsets.all(2),
                          child: Image.asset(
                            'assets/flutterLogo.png',
                            width: MediaQuery.of(context).size.width * 0.12, // Reduced width
                            height: 50, // Reduced height
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Container(
                            height: 52, // Reduced height
                            color: Colors.black12,
                            margin: EdgeInsets.all(2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '공공구 - 회색도시',
                                  style: TextStyle(fontSize: 10, color: Colors.white), // Further reduced fontSize
                                ),
                                Text(
                                  'Admin',
                                  style: TextStyle(fontSize: 8, color: Colors.white), // Further reduced fontSize
                                ),
                                Text(
                                  '4:19',
                                  style: TextStyle(fontSize: 8, color: Colors.white), // Further reduced fontSize
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 35, // Further reduced width
                          height: 50, // Reduced height
                          color: Colors.black26,
                          child: IconButton(
                            onPressed: () {
                              // Handle the IconButton tap event separately
                            },
                            icon: Icon(Icons.favorite_border, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
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
