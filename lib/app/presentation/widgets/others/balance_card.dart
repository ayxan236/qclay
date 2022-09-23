import 'package:flutter/material.dart';
import 'package:qclay/app/resources/app_colors.dart';
import 'package:qclay/gen/assets.gen.dart';
import 'package:qclay/gen/fonts.gen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({
    Key? key,
    required this.balance,
    required this.inDollar,
  }) : super(key: key);

  final String balance;
  final String inDollar;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_buildHeader(), _buildFooter()],
    );
  }

  Widget _buildHeader() => Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 26),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          image: DecorationImage(image: AssetImage(Assets.images.cardBackground.path), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(
              "Balance (\$VVS)",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.onPrimary,
              ),
              colors: [
                AppColors.onPrimary.withOpacity(.24),
                AppColors.onPrimary.withOpacity(.6),
              ],
            ),
            SizedBox(height: 31),
            Text(
              balance,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: AppColors.onPrimary,
                fontFamily: FontFamily.monoska
              ),
            ),
          ],
        ),
      );

  Widget _buildFooter() => Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.surface4,
              AppColors.surface5,
            ],
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "In dollars",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor1,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "\$" + inDollar,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.textColor1,
              ),
            ),
          ],
        ),
      );
}
