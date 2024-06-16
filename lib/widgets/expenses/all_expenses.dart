import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/widgets/shared/all_expenses_and_incomeheader.dart';
import 'package:responsive_dashboard_app/widgets/expenses/all_expenses_items_list_view.dart';
import 'package:responsive_dashboard_app/widgets/shared/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesAndIncomeheader(title: 'All Expenses'),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}
