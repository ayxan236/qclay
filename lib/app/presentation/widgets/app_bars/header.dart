import 'package:qclay/app/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:qclay/gen/fonts.gen.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.header, this.rightIcons, this.leftIcons, required this.subHeader});

  final String header;
  final String subHeader;
  final Widget? rightIcons;
  final Widget? leftIcons;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (leftIcons != null) leftIcons!,
          if (leftIcons != null) SizedBox(width: 10),
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitle(),
                  const SizedBox(height: 5),
                  _buildSubTitle(),
                ],
              )),
          SizedBox(width: 5),
          if (rightIcons != null) rightIcons!,
        ],
      ),
    );
  }

  Widget _buildTitle() => RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          children: [
            TextSpan(
              text: header.split(" ")[0] + " ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400,fontFamily: FontFamily.helios),
            ),
            TextSpan(
              text: header.split(" ")[1],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700,fontFamily: FontFamily.helios),
            ),
          ],
        ),
      );

  Widget _buildSubTitle() {
    List<String> splited = subHeader.split(" ");
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        children: [
          TextSpan(
            text: splited[0] + " ",
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
          ),
          TextSpan(
            text: splited[1] + " ",
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
          ),
          TextSpan(
            text: splited[2] + " ",
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w700),
          ),
          TextSpan(
            text: splited[3] + " ",
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w700),
          ),
          TextSpan(
            text: splited[4] + " ",
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
          ),
          TextSpan(
            text: splited[5],
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
