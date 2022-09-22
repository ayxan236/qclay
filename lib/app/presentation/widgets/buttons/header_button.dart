import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qclay/app/resources/app_colors.dart';
import 'package:qclay/gen/assets.gen.dart';

class HeaderButton extends StatelessWidget {
  const HeaderButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ScaleTap(
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColors.surface1,
              AppColors.surface2,
              AppColors.surface3,
            ],
          ),
        ),
        child: Row(
          children: [
            Text(
              "\$VVS",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.onPrimary,
              ),
            ),
            SizedBox(width: 10),
            Column(
              children: [
                SvgPicture.asset(Assets.images.arrowRigth),
                SizedBox(width: 5),
                SvgPicture.asset(Assets.images.arrowLeft),
              ],
            ),
            SizedBox(width: 10),
            Text(
              "\$",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
