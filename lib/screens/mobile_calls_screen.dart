import 'package:flutter/material.dart';
import '../colors.dart';

class MobileCallsScreen extends StatelessWidget {
  const MobileCallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: textColor,
        elevation: 0,
        title: const Text(
          'Calls',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            height: .2,
            color: dividerColor,
          ),
        ),
      ),

    );
  }
}
