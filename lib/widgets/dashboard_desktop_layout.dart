import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_dashboard_app/widgets/card/my_card.dart';
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
          child: AllExpensesAndQuickInvoice(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,
          child: MyCard()),
      ],
    );
  }
}
