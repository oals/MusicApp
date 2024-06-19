import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _offsetAnimation = Tween<Offset>(
      begin: Offset(0.0, 1.0),
      end: Offset(0.0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
        curve: Curves.easeInOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _openFileExplorer(BuildContext context) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['mp3', 'wav', 'flac'], // 업로드 가능한 형식자들
      );
      if (result != null) {
        String? filePath = result.files.single.path;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Selected file: $filePath')),
        );
        // 파일 업로드 서버 보낼때여기
      } else {
        // 업로드 취소 했을 때
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('파일 선택이 취소되었습니다.')),
        );
      }
    } catch (e) {
      print('File picking error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('잠시 후 다시 시도해주세요.')),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Container(
        width: MediaQuery.of(context).size.width,   //부모 창의 넓이 가져와야 함
        height: MediaQuery.of(context).size.height * 0.93,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    child: IconButton(
                      onPressed: () => {
                        _openFileExplorer(context)  // 이미지랑 음악 함수에서 구분해야됨
                      },
                      icon : Icon(Icons.image,color: Colors.white, size: 300,),
                    )
                  ),
                  Container(),
                  Container(),
                ],
              )



            )
          ],
        ),
      ),
    );
  }
}