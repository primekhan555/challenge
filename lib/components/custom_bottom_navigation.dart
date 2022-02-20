import 'package:challenge/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final Function(int) onTap;
  final int selected;
  const CustomBottomNavigation({Key? key, required this.onTap, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      selectedItemColor: MyColors.navigationActive,
      unselectedItemColor: MyColors.navigationunActive,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: (index)=>onTap(index),
        currentIndex: selected,
        items: [
        naviItem(title: 'Home', icon: Icons.home),
        naviItem(title: 'Explore', icon: Icons.search),
        naviItem(title: 'Notifications', icon: Icons.notifications),
        naviItem(title: 'Messages', icon: Icons.comment),
      ]);
  }
  naviItem({required String title, required IconData icon})=> BottomNavigationBarItem(icon: Icon(icon),label: title);

}