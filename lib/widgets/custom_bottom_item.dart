import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

BottomNavigationBarItem customBottomItem({required String icon, required bool isSelected}) {
  return BottomNavigationBarItem(
    icon: (icon == 'profile') 
    ? Container(
      height: 40, 
      width: 40, 
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/profile.jpeg'),
      )
    )):
    SvgPicture.asset(icon,color: isSelected ? Colors.black : Colors.grey),
    label: ''
  );
}