import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/utils/app_styles.dart';
import 'package:responsive_dashboard_app/widgets/shared/range_options.dart';

class AllExpensesAndIncomeheader extends StatelessWidget {
  const AllExpensesAndIncomeheader({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions()
      ],
    );
  }
}
