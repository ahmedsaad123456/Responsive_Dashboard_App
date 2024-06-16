import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/models/transaction_history_item_model.dart';
import 'package:responsive_dashboard_app/widgets/transaction_history/transaction_hisotry_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionHistoryItemModel> items = [
    TransactionHistoryItemModel(
      title: 'Card Withdrawal',
      date: '13 Apr, 2022 at 3:30 PM',
      price: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionHistoryItemModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 8:13 PM',
      price: r'$2,000',
      isWithdrawal: false,
    ),
    TransactionHistoryItemModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 11:30 PM',
      price: r'$15,745',
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: index != 3 ? 12 : 0),
          child:
              TransactionHisotryItem(transactionHistoryItemModel: items[index]),
        );
      },
    );
  }
}
