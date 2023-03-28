import 'package:flutter/material.dart';

class HomeBodyBanner extends StatelessWidget {
  const HomeBodyBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _bannerImage(), // 모든 컴포넌트는 따로 분리를 하지 않더라도 메소드화 시켜라
        Container(
          constraints: BoxConstraints(
            maxWidth: 250
          ),
          child: Column(
            children: [ // SizedBox는 최소크기 제약을 걸수가 없다 . 내부 크기가 크면 그걸로 고정됨
              Text(
                "이제 여행은 가까운 곳에서",
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
              Text("새로운 공간에 머물러 보세요. 살아보기, 출장, 여행등 다양한 목표",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              TextButton(
                onPressed: () {},
                child: Text("가까운 여행지 둘러보기",
                    style: TextStyle(color: Colors.white, fontSize: 23)),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _bannerImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/banner.jpg",
        fit: BoxFit.cover, // fit은 에셋안에
        width: double.infinity, // 화면 끝까지
        height: 320,
      ),
    );
  }
}
