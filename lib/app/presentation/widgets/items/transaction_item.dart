import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qclay/app/resources/app_colors.dart';
import 'package:qclay/domain/entities/transactions_entity.dart';
import 'package:qclay/gen/assets.gen.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final TransactionsEntity transaction;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              transaction.image,
              height: 54,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.status,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.onPrimary,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  DateFormat("dd MMMM").format(transaction.date),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textColor2,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          (transaction.isIncrease ? "+" : "-") + " ${transaction.cost} \$VVS",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.onPrimary,
          ),
        ),
      ],
    );
  }
}
