import 'package:flutter/material.dart';
import 'package:flutterapp/comnWidget/CustomBottomSheet.dart';
import 'package:flutterapp/music/MusicPlay.dart';
import 'package:flutterapp/comnWidget/MusicInfo.dart';

class SearchMusic extends StatefulWidget {
  const SearchMusic({Key? key}) : super(key: key);

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
      _focusNode.unfocus(); // 키보드 닫기
    } else {
      print('키보드열기');
      _focusNode.requestFocus(); // 키보드 열기
    }
  }

  void likeMusic(likeChk){
    if(likeChk == 0){

    }else{

    }
  }

  void onSearchButtonPressed() {
    _focusNode.unfocus(); // 키보드 닫기
    handleSubmitted(_controller.text); // 검색어 처리 함수 호출
    _controller.clear(); // 입력 필드 비우기
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black87,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Material(
                elevation: 10,
                shadowColor: Colors.grey[400],
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    ),
                    onTap: onSearchTap,
                    onSubmitted: handleSubmitted,
                  ),
                ),
              ),
              SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          musicInfo(
                            context: context,
                            imageWidth: 0.40,
                            containerWidth: 0.30,
                            containerHeight: 70.0,
                            fontSize1: 12.0,
                            fontSize2: 10.0,
                          ),
                          musicInfo(
                            context: context,
                            imageWidth: 0.40,
                            containerWidth: 0.30,
                            containerHeight: 70.0,
                            fontSize1: 12.0,
                            fontSize2: 10.0,
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
