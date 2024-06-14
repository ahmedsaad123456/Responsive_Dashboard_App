import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard_app/utils/app_images.dart';
import 'package:responsive_dashboard_app/widgets/all_expenses_item.dart';

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
      // map to access the models only without the index
      // children: items
      //     .map((e) => Expanded(child: AllExpensesItem(allExpensesItemModel: e)))
      //     .toList(),

      // we use as map to get the index
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
            child: AllExpensesItem(
              allExpensesItemModel: item,
              isSelected: activeIndex == index,
            ),
          ),
          ),
        );
      }).toList(),
    );
  }
}
