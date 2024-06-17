import 'package:flutter/material.dart';
import 'package:flutterapp/comnWidget/Appbar.dart';
import 'package:flutterapp/main.dart';
import 'package:flutterapp/comnWidget/SnackBar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {

  bool LoginTry() {
    if(false){

      return true;
    }else{

      return false;
    }

  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Text('로그인'),
        ),
        body: Column(
          children: [
            Container(width: double.infinity,height: 200,margin: EdgeInsets.only(top: 30,left: 10,right: 10),
                child: Image.asset("assets/flutterLogo.png")
            ),
            Container(width: double.infinity,height: 50,margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "아이디를 입력해주세요."
                ),
                onChanged: (value) {
                  print(value);
                },
              ),),
            Container(width: double.infinity,height: 50,margin: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "비밀번호를 입력해주세요."
                ),
                onChanged: (value) {
                  print(value);
                },
              ),),
            SizedBox(width: 100,height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: TextButton(
                      onPressed: () => {
                        print('로그인 시도'),
                        if(LoginTry()){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()))
                        }else{
                          Snackbar()
                        },
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Text('로그인'),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 100,height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: TextButton(
                      onPressed: () => {
                        print('회원가입 이동 필요 ')
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Text('회원가입'),
                      ),
                    ),
                  ),
                ],
              ),
            )

          ],
        )
    );
  }
}

