import 'package:flutter/material.dart';

class HomeHeaderAppbar extends StatelessWidget {
  const HomeHeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logo(),  // ctrl alt m을 이용해서 메소드 분리
          _menu(),
        ],
      ),
    );
  }

  Widget _menu() {
    return Row(
        children: [
          InkWell(  // 모든 위젯을 버튼화 시켜주는 요소
            onTap: (){

            },
            child: Text("로그인", style: TextStyle(
              color: Colors.white, fontSize: 20
            ),)),
          SizedBox(width: 20,),
          InkWell(
              onTap: (){

              },
              child: Text("회원가입", style: TextStyle(
                color: Colors.white, fontSize: 20
              ),)),
          SizedBox(width: 20,)
        ],
      );
  }

  Widget _logo() {
    return Row(
        children: [
          Image.asset("assets/logo.png",
            width: 30,
            height: 30,
            color: Colors.redAccent,
          ),
          SizedBox(width: 15,),
          Text("Airbnb", style: TextStyle(fontSize: 40, color: Colors.white),)
        ],
      );
  }
}
