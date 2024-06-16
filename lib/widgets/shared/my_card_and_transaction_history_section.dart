import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/widgets/card/my_cards_section.dart';
import 'package:responsive_dashboard_app/widgets/transaction_history/transaction_history.dart';
import 'package:responsive_dashboard_app/widgets/shared/custom_background_container.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
