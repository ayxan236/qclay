import 'package:flutter/material.dart';
import 'package:qclay/app/resources/app_colors.dart';
import 'package:qclay/domain/entities/user_entity.dart';

class UserItem extends StatelessWidget {
  const UserItem({Key? key, required this.user}) : super(key: key);
  final Users user;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildImage(),
        SizedBox(height: 15),
        _buildText(),
      ],
    );
  }

  Widget _buildImage() => Container(
        padding: EdgeInsets.all(5).copyWith(right: 10),

        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Image.asset(
          user.image,
          height: 54,
        ),
      );

  Text _buildText() => Text(
        user.name,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.onPrimary,
        ),
      );
}
