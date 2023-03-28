import 'package:airbnb_app/views/pages/post/home/home_body_popular.dart';
import 'package:flutter/material.dart';

import 'home_body_banner.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // double bodyWidth = MediaQuery.of(context).size.width * 0.7; // 미디어 쿼리 - 줄어들어도 최소 크기는 70%
    double bodyPadding = MediaQuery.of(context).size.width * 0.15; // 미디어 쿼리 - 줄어들어도 최소 크기는 70%
    // MediaQuery.of(context).size 는 현재 BuildContext 에 대한 MediaQueryData 객체를 반환 - 화면 크기 정보가 들어 있음 0.15는 화면의 0.15만큼
    
    // return Align(
    //   child: SizedBox( // SizedBox의 단점 - 내부 요소가 크면 내부요소에 의해 영향을 받아서 지정된 크기가 무시된다.
    //     // 따라서 이럴때는 Align 으로 다시 한번 감싸준다.
    //     width: bodyWidth,
    //     child: Column(
    //       children: [
    //         HomeBodyBanner(),
    //         HomeBodyPopular(),
    //       ],
    //     ),
    //   ),
    // );

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: bodyPadding), // 화면의 0.15만큼의 패딩을 가로만 준다
          child: Column(
            children: [
              HomeBodyBanner(),
              HomeBodyPopular(),
            ],
          ),
        );
  }
}
