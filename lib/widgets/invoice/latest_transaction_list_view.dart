import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/models/user_info_model.dart';
import 'package:responsive_dashboard_app/utils/app_images.dart';
import 'package:responsive_dashboard_app/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar1),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: items
              .map(
                (e) =>
                    IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
              )
              .toList()),
    );
  }
}
