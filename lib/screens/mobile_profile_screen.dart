import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';

class MobileProfileScreen extends StatelessWidget {
  const MobileProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: textColor,
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            height: .2,
            color: dividerColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(
                      user[0]['profilePic'].toString(),
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: floatingActionButtonColor,
                      foregroundColor: floatingActionButtonIconColor,
                      child: Icon(Icons.camera_alt_outlined),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ProfileItemLists(
              iconName: Icons.person_outline,
              title: 'Name',
              subTitle: 'Nadim',
              trailingIcon: Icons.edit_outlined,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'This is not your username or pin. This name will be visible to your WhatsApp contacts.',
                style: TextStyle(
                    color: textColor.withOpacity(0.6), fontSize: 13),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Divider(
                height: 30,
                color: dividerColor,
              )
            ),
            const ProfileItemLists(
              iconName: Icons.more_outlined,
              title: 'About',
              subTitle: 'Sleeping 😴',
              trailingIcon: Icons.edit_outlined,
            ),
            const Padding(
                padding: EdgeInsets.only(left: 50),
                child: Divider(
                  height: 30,
                  color: dividerColor,
                )
            ),
            const ProfileItemLists(
              iconName: Icons.call_outlined,
              title: 'Phone',
              subTitle: '+880194455XXXX',
              trailingIcon: Icons.edit_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileItemLists extends StatelessWidget {
  const ProfileItemLists({
    super.key,
    required this.iconName,
    required this.title,
    required this.subTitle,
    required this.trailingIcon,
  });

  final IconData iconName;
  final String title;
  final String subTitle;
  final IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: appBarColor,
          child: Icon(
            iconName,
            color: textColor.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: textColor.withOpacity(0.6), fontSize: 13),
            ),
            Text(
              subTitle,
              style: const TextStyle(color: textColor, fontSize: 16),
            )
          ],
        ),
        const Spacer(),
        Icon(
          trailingIcon,
          color: floatingActionButtonColor,
        ),
      ],
    );
  }
}
