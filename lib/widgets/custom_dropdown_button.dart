import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  final List<PopupMenuEntry> menuItems;
  final IconData icon;

  const CustomDropdownButton(
      {super.key, required this.menuItems, this.icon = Icons.more_vert});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: () {
        showMenu(
          context: context,
          position: const RelativeRect.fromLTRB(100, 100, 0, 100),
          items: menuItems,
        );
      },
    );
  }
}
