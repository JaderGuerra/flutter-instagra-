import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

BottomNavigationBarItem customBottomItem({required String icon, required bool isSelected}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(icon,color: isSelected ? Colors.black : Colors.grey),
    label: ''
  );
  }