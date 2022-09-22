import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qclay/app/presentation/widgets/items/user_item.dart';
import 'package:qclay/app/resources/app_colors.dart';
import 'package:qclay/domain/entities/user_entity.dart';
import 'package:qclay/gen/assets.gen.dart';

class FrequentTransactions extends StatelessWidget {
  const FrequentTransactions({
    Key? key,
    required this.usersList,
  }) : super(key: key);

  final List<Users> usersList;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            _buildButton(),
            SizedBox(height: 15),
            _buildText(),
          ],
        ),
        SizedBox(width: 24),
        _buildDivider(),
        SizedBox(width: 24),
        _buildUsers(),
      ],
    );
  }

  Text _buildText() => Text(
        "Send",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.onPrimary,
        ),
      );

  Container _buildButton() => Container(
    height: 54,
        padding: EdgeInsets.all(17),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.blue,
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              spreadRadius: 0,
              color: AppColors.accent1.withOpacity(0.8),
            )
          ],
        ),
        child: SvgPicture.asset(Assets.images.send),
      );

  Widget _buildDivider() => Container(
        height: 50,
        width: 1,
        decoration: BoxDecoration(
          color: AppColors.blue,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.onPrimary.withOpacity(0.1),
              AppColors.onPrimary,
              AppColors.onPrimary.withOpacity(0.1),
            ],
          ),
        ),
      );

  Widget _buildUsers() => Expanded(
        child: Container(
          height: 100,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: usersList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => UserItem(
              user: usersList[index],
            ),
          ),
        ),
      );
}
