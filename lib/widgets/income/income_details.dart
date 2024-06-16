import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/models/income_details_item_model.dart';
import 'package:responsive_dashboard_app/widgets/income/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeDetailsItemModel> items = [
    IncomeDetailsItemModel(
        color: Color(0xFF208CC8), title: 'Design service', percentage: '40%'),
    IncomeDetailsItemModel(
        color: Color(0xFF4EB7F2), title: 'Design product', percentage: '25%'),
    IncomeDetailsItemModel(
        color: Color(0xFF064061), title: 'Product royalti', percentage: '20%'),
    IncomeDetailsItemModel(
        color: Color(0xFFE2DECD), title: 'Other', percentage: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: index != 4 ? 12 : 0),
          child: IncomeDetailsItem(incomeDetailsItemModel: items[index]),
        );
      },
    );
  }
}
