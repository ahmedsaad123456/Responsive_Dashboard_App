import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/models/income_details_item_model.dart';
import 'package:responsive_dashboard_app/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsItemModel});

  final IncomeDetailsItemModel incomeDetailsItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
            shape: const OvalBorder(), color: incomeDetailsItemModel.color),
      ),
      title: Text(
        incomeDetailsItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetailsItemModel.percentage,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
