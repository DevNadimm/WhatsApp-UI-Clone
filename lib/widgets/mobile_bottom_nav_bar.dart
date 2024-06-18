import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_screen_layout.dart';
import '../colors.dart';

class MobileBottomNavBar extends StatefulWidget {
  const MobileBottomNavBar({super.key});

  @override
  State<MobileBottomNavBar> createState() => _MobileBottomNavBarState();
}

class _MobileBottomNavBarState extends State<MobileBottomNavBar> {
  int currentIndex = 0;

  void onDestinationSelected(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    MobileScreenLayout(),
    Text('Updates Screen'),
    Text('Communities Screen'),
    Text('Calls Screen'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(currentIndex),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            height: 0,
            color: dividerColor,
          ),
          NavigationBar(
            selectedIndex: currentIndex,
            onDestinationSelected: onDestinationSelected,
            backgroundColor: const Color(0XFF0B141A),
            indicatorColor: const Color(0XFF0F3529),
            destinations: const [
              NavigationDestination(icon: Icon(Icons.message), label: 'Chats'),
              NavigationDestination(
                  icon: Icon(Icons.tips_and_updates), label: 'Updates'),
              NavigationDestination(
                  icon: Icon(Icons.groups_outlined), label: 'Communities'),
              NavigationDestination(
                  icon: Icon(Icons.call_sharp), label: 'Calls'),
            ],
          ),
        ],
      ),
    );
  }
}
