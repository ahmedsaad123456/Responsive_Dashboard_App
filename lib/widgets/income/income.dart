import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/widgets/income/income_section_body.dart';
import 'package:responsive_dashboard_app/widgets/shared/all_expenses_and_incomeheader.dart';
import 'package:responsive_dashboard_app/widgets/shared/custom_background_container.dart';



class Income extends StatelessWidget {
  const Income({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesAndIncomeheader(title: 'Income'),
          SizedBox(height: 16,),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}

