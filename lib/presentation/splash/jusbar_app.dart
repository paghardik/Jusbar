import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jusbar/presentation/splash/controller/splash_controller.dart';
import 'package:jusbar/presentation/themes/app_color.dart';
import 'package:jusbar/utility/strings.dart';

import 'components/indicator.dart';
import 'components/splash_text.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  static const List<String> _list = [
    'assets/svgs/sp1.svg',
    'assets/svgs/sp2.svg',
    'assets/svgs/sp3.svg',
  ];

  static const List<ImageTextData> _listPojo = [
    ImageTextData('assets/svgs/sp1.svg', Strings.splashText1),
    ImageTextData('assets/svgs/sp2.svg', Strings.splashText2),
    ImageTextData('assets/svgs/sp3.svg', Strings.splashText3),
  ];

  static const Map<int, String> _listMap = {
    1: 'assets/svgs/sp1.svg',
    2: 'assets/svgs/sp2.svg',
    3: 'assets/svgs/sp3.svg',
  };

  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            CarouselSlider(
              items: _listPojo
                  .map((dataclass) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(dataclass.imgUrl),
                          SizedBox(
                            height: 25.0,
                          ),
                          SplashText(
                            text: dataclass.text,
                          )
                        ],
                      ))
                  .toList(),
              options: CarouselOptions(
                height: double.infinity,
                onPageChanged: (index, reason) {
                  print("OnPageChanged: $index");
                  splashController.setIndex(index);
                },
              ),
            ),
            FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.3,
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _list.map((e) {
                        final index = _list.indexOf(e);
                        return Indicator(
                          selectedIndex: splashController.selectedIndex.value,
                          currentIndex: index,
                        );
                      }).toList(),
                    );
                  }),
                  SizedBox(
                    height: 50,
                  ),
                ],
              )),
            )
          ],
        ),
      ),
      floatingActionButton: Obx(() {
        return FloatingActionButton(
          backgroundColor: getColor(splashController.selectedIndex.value),
          child: Icon(Icons.navigate_next),
        );
      }),
    );
  }
}

class ImageTextData {
  final String imgUrl;
  final String text;
  const ImageTextData(this.imgUrl, this.text);
}
