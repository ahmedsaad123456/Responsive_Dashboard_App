import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/models/transaction_history_item_model.dart';
import 'package:responsive_dashboard_app/utils/app_styles.dart';

class TransactionHisotryItem extends StatelessWidget {
  const TransactionHisotryItem(
      {super.key, required this.transactionHistoryItemModel});

  final TransactionHistoryItemModel transactionHistoryItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          transactionHistoryItemModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(transactionHistoryItemModel.date,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: const Color(0xFFAAAAAA))),
        trailing: Text(
          transactionHistoryItemModel.price,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transactionHistoryItemModel.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7DD97B)),
        ),
      ),
    );
  }
}
