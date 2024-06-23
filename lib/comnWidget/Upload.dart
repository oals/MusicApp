import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  ImageProvider<Object>? _selectedImageFile;

  List<String> checkBoxList = [
    '힙합', '알앤비', '발라드', '락'
  ];

  Map<String, bool> buttonStates = {};

  @override
  void initState() {
    super.initState();
    _selectedImageFile = AssetImage('assets/flutterLogo.png');
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();

    checkBoxList.forEach((item) {
      buttonStates[item] = false;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleButtonState(String item) {
    setState(() {
      buttonStates[item] = !buttonStates[item]!;
    });
  }

  void _openFileExplorer(BuildContext context) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['mp3', 'wav', 'flac'], // 업로드 가능한 형식자들
      );
      if (result != null) {
        String? filePath = result.files.single.path;
        setState(() {
          _selectedImageFile = FileImage(File(filePath!));
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Selected file: $filePath')),
        );
        // 파일 업로드 서버 보낼때 여기
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('파일 선택이 취소되었습니다.')),
        );
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('잠시 후 다시 시도해주세요.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          _openFileExplorer(context);
                        },
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0), // 버튼 모서리를 사각형 모양으로 만듦
                          ),
                        ),
                        child: Container(
                          width: 120,
                          height: 160,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: _selectedImageFile!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Title",
                              labelStyle: TextStyle(color: Colors.white, fontSize: 12),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "asd",
                              labelStyle: TextStyle(color: Colors.white, fontSize: 12),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "admin",
                              labelStyle: TextStyle(color: Colors.white, fontSize: 12),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                            onChanged: (value) {
                              print(value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'info',
                    labelStyle: TextStyle(color: Colors.white, fontSize: 12),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                Container(
                    height: 110,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Wrap(
                          direction: Axis.horizontal, // 나열 방향
                          alignment: WrapAlignment.start, // 정렬 방식
                          spacing: 2, // 좌우 간격
                          runSpacing: 2, // 상하 간격
                          children: checkBoxList.map((item) => Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                                color: buttonStates[item]! ? Colors.white24 : Colors.transparent,
                              ),
                              child: TextButton(
                                onPressed: () {
                                  _toggleButtonState(item);
                                },
                                child: Text(item, style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          )).toList(),
                        ),
                      ],
                    )
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                  ),
                  child: Center(
                    child: Icon(Icons.add,color: Colors.white,size: 35,),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.upload,
                            color: Colors.white,
                          ),
                          iconSize: 38,
                          splashRadius: 24,
                        ),
                        Text(
                          '업로드',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

