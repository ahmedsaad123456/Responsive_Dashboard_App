import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/widgets/shared/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard_app/widgets/income/income.dart';
import 'package:responsive_dashboard_app/widgets/shared/my_card_and_transaction_history_section.dart';
import 'package:responsive_dashboard_app/widgets/drawer/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              // SliverFillRemaining take the screen height
              // so if there is a widget inside it take height
              // bigger than the screen height , the error will occur
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: AllExpensesAndQuickInvoice(),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    // here the problem
                    Expanded(
                      // this column take height bigger than the screen height
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          // take the enough height
                          MyCardAndTransactionHistorySection(),
                          SizedBox(
                            height: 24,
                          ),
                          // take the rest
                          Expanded(child: Income()),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
