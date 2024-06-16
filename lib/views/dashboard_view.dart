import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/utils/size_config.dart';
import 'package:responsive_dashboard_app/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard_app/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard_app/widgets/layouts/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard_app/widgets/layouts/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard_app/widgets/layouts/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: SizeConfig.width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      drawer:
          SizeConfig.width < SizeConfig.tablet ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
