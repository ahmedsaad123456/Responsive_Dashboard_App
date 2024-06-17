import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard_app/utils/app_images.dart';
import 'package:responsive_dashboard_app/widgets/expenses/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        price: r"$34,456",
        date: 'May 2021'),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        price: r"$20,129",
        date: 'April 2022'),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        price: r"$14,796",
        date: 'July 2022'),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (activeIndex != 0) {
                setState(() {
                  activeIndex = 0;
                });
              }
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[0],
              isSelected: activeIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (activeIndex != 1) {
                setState(() {
                  activeIndex = 1;
                });
              }
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[1],
              isSelected: activeIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (activeIndex != 2) {
                setState(() {
                  activeIndex = 2;
                });
              }
            },
            child: AllExpensesItem(
              allExpensesItemModel: items[2],
              isSelected: activeIndex == 2,
            ),
          ),
        ),
      ],
    );
  }
}
