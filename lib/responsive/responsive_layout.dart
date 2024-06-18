import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveLayout(
      {super.key,
      required this.webScreenLayout,
      required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > 1000) {
        // Web Layout
        return webScreenLayout;
      } else {
        // Mobile Layout
        return mobileScreenLayout;
      }
    },);
  }
}
