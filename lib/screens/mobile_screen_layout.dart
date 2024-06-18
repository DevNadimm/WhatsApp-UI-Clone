import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';

import '../colors.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Colors.white,
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
      body: const ContactsList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: tabColor,
        foregroundColor: backgroundColor,
        child: const Icon(Icons.add_comment),
      ),
    );
  }
}
