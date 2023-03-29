import 'package:airbnb_app/views/components/common_form_field.dart';
import 'package:flutter/material.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Align(
        alignment: screenWidth < 520 ? Alignment(0, 0) : Alignment(-0.6, 0), // -1 ~ 1 까지의 범위가 전체 범위
        child: Container(
          // 컨테이너에도 color속성을 사용가능하지만 Decoration속성을 사용하면 Decoration의 color를 사용해야한다. 터짐 !!
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Form(
              child: Column(
                children: [
                  Column(
                    children: const [
                      Text(
                        "모두의 숙소에서 숙소를 검색하세요.",
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체'숙소까지, 모두의 숙소에 다 있습니다.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CommonFormField(
                        prefixText: "위치",
                        hintText: "근처 추천 장소",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(child: CommonFormField(prefixText: "체크인", hintText: "날짜입력")),
                          SizedBox(width: 20,),
                          Expanded(child: CommonFormField(prefixText: "체크아웃", hintText: "날짜 입력"))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(child: CommonFormField(prefixText: "성인", hintText: "2")),
                          SizedBox(width: 20,),
                          Expanded(child: CommonFormField(prefixText: "어린이", hintText: "0")),
                        ],
                      ),
                      SizedBox(height: 10)
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                    ,onPressed: (){
                      print('서브밋 클릭됨');
                    }, child: Text("검색",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    )),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
