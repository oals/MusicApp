import 'package:flutter/material.dart';


class SearchMusic extends StatefulWidget {
  const SearchMusic({super.key});

  @override
  State<SearchMusic> createState() => _SearchMusicState();
}

class _SearchMusicState extends State<SearchMusic> {

  late FocusNode _focusNode;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void handleSubmitted(String value) {
    print('handle~~');
  }

  void onSearchTap() {
    if (_focusNode.hasFocus) {
      print('키보드닫기');
      _focusNode.unfocus(); //키보드 닫기
    } else {
      print('키보드열기');
      _focusNode.requestFocus(); // 키보드 열기
    }
  }

  void onSearchButtonPressed() {
    print('123123');
    _focusNode.unfocus(); // 키보드 닫기
    handleSubmitted(_controller.text); // 검색어 처리 함수 호출
    _controller.clear(); // 입력 필드 비우기
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black87,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Material(
              elevation: 10, // 그림자의 깊이
              shadowColor: Colors.grey[400], // 그림자 색상
              borderRadius: BorderRadius.circular(20), // 테두리의 모서리를 둥글게 만듦
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16.0), // 좌우 여백 설정
                decoration: BoxDecoration(
                  color: Colors.white, // 배경색 설정
                  borderRadius: BorderRadius.circular(20), // 테두리의 모서리를 둥글게 만듦
                ),
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none, // 텍스트 필드의 테두리 없음
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0), // 내부 여백 설정
                  ),
                  onTap: onSearchTap,
                  onSubmitted: handleSubmitted, // 엔터 키 입력 시 처리
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Text('1',style: TextStyle(color: Colors.white),),
                    Text('1',style: TextStyle(color: Colors.white),),
                    Text('1',style: TextStyle(color: Colors.white),),
                    Text('1',style: TextStyle(color: Colors.white),),
                    Text('1',style: TextStyle(color: Colors.white),),
                    Text('1',style: TextStyle(color: Colors.white),),
                  ],
                ),
              )
            )

          ],
        ),
      )

    );

  }
}
