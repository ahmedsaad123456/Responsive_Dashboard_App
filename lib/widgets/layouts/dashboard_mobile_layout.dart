import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/widgets/income/income.dart';
import 'package:responsive_dashboard_app/widgets/shared/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard_app/widgets/shared/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoice(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          Income(),
        ],
      ),
    );
  }
}
