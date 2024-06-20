import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/setting_screen.dart';
import 'package:whatsapp_clone/widgets/contacts_list.dart';
import '../colors.dart';
import '../widgets/custom_dropdown_button.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: textColor,
        elevation: 0,
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
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
          CustomDropdownButton(
            menuItems: [
              const PopupMenuItem(
                value: 1,
                child: Text("New group"),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("New broadcast"),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text("Linked devices"),
              ),
              const PopupMenuItem(
                value: 4,
                child: Text("Starred messages"),
              ),
              PopupMenuItem(
                value: 5,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SettingScreen(),
                    ),
                  );
                },
                child: const Text("Settings"),
              ),
            ],
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
        backgroundColor: floatingActionButtonColor,
        foregroundColor: floatingActionButtonIconColor,
        child: const Icon(Icons.add_comment),
      ),
    );
  }
}
