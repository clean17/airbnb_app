import 'package:airbnb_app/views/pages/post/home/home_header_appbar.dart';
import 'package:airbnb_app/views/pages/post/home/home_header_form.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.jpeg"),
          fit: BoxFit.cover
        )
      ),
      child: Column(  // 컬럼에는 백그라운드 설정을 줄 수가 없다 !!!!!!!!! Container로 감싼다
        children: [
          HomeHeaderAppbar(),
          HomeHeaderForm(),
        ],
      ),
    );
  }
}
