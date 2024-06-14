import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/models/drawer_item_model.dart';
import 'package:responsive_dashboard_app/models/user_info_model.dart';
import 'package:responsive_dashboard_app/utils/app_images.dart';
import 'package:responsive_dashboard_app/widgets/active_and_inactive_item.dart';
import 'package:responsive_dashboard_app/widgets/drawer_items_list_view.dart';
import 'package:responsive_dashboard_app/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                    image: Assets.imagesAvatar3,
                    title: 'Lekan Okeowo',
                    subTitle: 'demo@gmail.com')),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),

          const DrawerItemListView(),
          // because we can't use expanded widget in single child scroll view
          // we use custom scroll view and use sliverFillRemainind
          // that allow to use expanded inside it
          const SliverFillRemaining(
            // use this to the parent (custom scroll view) has scroll body
            // so this widget will scroll with the parent
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  image: Assets.imagesSettings,
                  title: 'Settings system',
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  image: Assets.imagesLogout,
                  title: 'Logout account',
                )),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}