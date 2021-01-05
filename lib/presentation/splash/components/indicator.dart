import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jusbar/presentation/splash/controller/splash_controller.dart';
import 'package:jusbar/presentation/themes/app_color.dart';

class Indicator extends StatelessWidget {
  final int currentIndex;
  final int selectedIndex;
  Indicator({
    Key key,
    this.currentIndex,
    this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      height: 8,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: currentIndex == selectedIndex
            ? getColor(selectedIndex)
            : Colors.grey.withOpacity(0.2),
      ),
    );
  }
}

Color getColor(int selectedIndex) {
  print('Selected Index $selectedIndex');
  switch (selectedIndex) {
    case 0:
      return AppColor.frenchRose;
      break;
    case 1:
      return AppColor.macaroniAndCheese;
      break;
    case 2:
      return AppColor.lavender;
      break;
    default:
      return Colors.grey;
  }
}
