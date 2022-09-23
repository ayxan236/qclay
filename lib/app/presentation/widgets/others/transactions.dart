import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qclay/app/presentation/widgets/items/transaction_item.dart';
import 'package:qclay/app/resources/app_colors.dart';
import 'package:qclay/domain/entities/transactions_entity.dart';
import 'package:qclay/gen/assets.gen.dart';

class Transactions extends StatelessWidget {
  Transactions({Key? key, required this.transactions}) : super(key: key);

  List<TransactionsEntity> transactions;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 27, vertical: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              color: AppColors.background1,
            ),
            child: Column(
              children: [
                _buildTitle(),
                const SizedBox(height: 20),
                _buildTransaction(transactions[0]),
                const SizedBox(height: 200),
              ],
            ),
          ),
        ),
        Positioned.fill(
          top: 150,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 27, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
                color: AppColors.background2,
              ),
              child: Column(
                children: [
                  _buildTransaction(transactions[1]),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTitle() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "TRANSACTION HISTORY",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: AppColors.textColor2,
            ),
          ),
          SvgPicture.asset(Assets.images.filter),
        ],
      );

  Widget _buildTransaction(TransactionsEntity transactions) => TransactionItem(transaction: transactions);
}
