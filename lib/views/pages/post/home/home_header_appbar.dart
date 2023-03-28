import 'package:flutter/material.dart';

class HomeHeaderAppbar extends StatelessWidget {
  const HomeHeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _logo(),  // ctrl alt m을 이용해서 메소드 분리
        _menu(),
      ],
    );
  }

  Widget _menu() {
    return Row(
        children: [
          InkWell(  // 모든 위젯을 버튼화 시켜주는 요소
            onTap: (){

            },
            child: Text("로그인")),
          InkWell(
              onTap: (){

              },
              child: Text("회원가입")),
        ],
      );
  }

  Widget _logo() {
    return Row(
        children: [
          Image.asset("assets/logo.png"),
          Text("Airbnb")
        ],
      );
  }
}
