import 'package:flutter/material.dart';
import 'package:instagram/widgets/custom_bottom_item.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({ Key? key }) : super(key: key);

  @override
   State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int currentIndex = 0;
  List itemsList = ['assets/icons/home.svg',
    'assets/icons/search.svg',
    'assets/icons/reels.svg',
    'assets/icons/shop.svg',
    'profile'
  ]; 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: const Center(),
    bottomNavigationBar: 
      BottomNavigationBar(
        currentIndex:currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: itemsList
          .asMap()
          .entries
          .map((e) => customBottomItem(
            icon: e.value,
            isSelected: e.key == currentIndex,
          ))
          .toList()),
   );
  }


}