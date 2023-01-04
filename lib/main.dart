import 'package:flutter/material.dart';

void main() {
  // runApp 함수안에는 최상위에 MateralApp을 넣는다
  runApp(MaterialApp(
    // build 메소드 안에 있지 않으면 핫 리스타트를 해줘야지 업데이트가 반영이 된다.
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  // 핫 리로드는 빌드 함수안에 있는것만 재실행 해준다.
  @override
  Widget build(BuildContext context) {
    // column : 세로 배치 주축은 세로 반대축은 가로
    // row : 가로 배치 주축은 가로 반대축은 세로
    return Scaffold(
        // 16진수는 0x로 시작한다. FF 는 투명도를 의미함
        backgroundColor: const Color(0xFFF99231),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('asset/img/logo.png'),
            // 로딩바
            const CircularProgressIndicator(
              color: Colors.white,
            )
          ],
        ));
  }
}
