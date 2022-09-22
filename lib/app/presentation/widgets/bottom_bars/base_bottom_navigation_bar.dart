import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qclay/app/resources/app_colors.dart';
import 'package:qclay/domain/enums/navigation_bar_item.dart';
import 'package:qclay/gen/assets.gen.dart';

class BaseBottomNavigationBar extends StatelessWidget {
  BaseBottomNavigationBar({
    required this.onItemSelected,
    required this.selectedItem,
  });

  final void Function(NavigationBarItem item) onItemSelected;
  final NavigationBarItem selectedItem;

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 67,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                AppColors.bottomBarColor1,
                AppColors.bottomBarColor2,
              ]),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow,
                  offset: Offset(0, 5),
                  blurRadius: 20,
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            padding: const EdgeInsets.symmetric(horizontal: 28),
            margin: const EdgeInsets.symmetric(vertical: 28, horizontal: 30),
            decoration: BoxDecoration(
              color: AppColors.bottomBarColor,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: AppColors.gray1),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AppColors.surface7,
                  AppColors.surface6,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadow,
                  offset: Offset(0, 5),
                  blurRadius: 20,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNavigationBarItem(NavigationBarItem.location),
                Spacer(),
                _buildNavigationBarItem(NavigationBarItem.wallet),
                Spacer(),
                _buildNavigationBarItem(NavigationBarItem.chat),
                Spacer(),
                _buildNavigationBarItem(NavigationBarItem.profile),
              ],
            ),
          ),
        ],
      );

  Widget _buildNavigationBarItem(
    NavigationBarItem item,
  ) {
    String image = Assets.images.bottomBarItem1.path;
    switch (item) {
      case NavigationBarItem.location:
        image = Assets.images.bottomBarItem1.path;
        break;
      case NavigationBarItem.wallet:
        image = Assets.images.bottomBarItem2.path;
        break;
      case NavigationBarItem.chat:
        image = Assets.images.bottomBarItem3.path;
        break;
      case NavigationBarItem.profile:
        image = Assets.images.bottomBarItem4.path;
        break;
    }
    return Column(
      children: [
        SizedBox(height: 10),
        GestureDetector(
          onTap: () => onItemSelected(item),
          child: Container(
            color: Colors.transparent,
            width: 50,
            height: 50,
            alignment: Alignment.center,
            child: Image.asset(
              image,
              height: 32,
            ),
          ),
        ),
        Spacer(),
        if (selectedItem == item)
          Container(
            height: 6,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.onAccent1,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: AppColors.onAccent1,
                  offset: Offset(0, -5),
                  blurRadius: 20,
                  spreadRadius: 1,
                ),
              ],
            ),
          )
      ],
    );
  }
}
