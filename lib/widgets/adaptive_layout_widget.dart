import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout});

  // WidgetBuilder for make the variables as functions that take context
  // to solve the problem of creating objects from the three layout even 
  // if i in the once of them, and to pass the context to the layouts
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 800) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < 1200) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}