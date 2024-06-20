import 'package:flutter/material.dart';
import '../colors.dart';
import '../widgets/custom_dropdown_button.dart';

class MobileFriendProfileScreen extends StatelessWidget {
  const MobileFriendProfileScreen(
      {super.key, required this.name, required this.imgURL});

  final String imgURL;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: textColor,
        elevation: 0,
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [
          CustomDropdownButton(menuItems: [
            PopupMenuItem(
              value: 1,
              child: Text("Share"),
            ),
            PopupMenuItem(
              value: 2,
              child: Text("Edit"),
            ),
            PopupMenuItem(
              value: 3,
              child: Text("View in address book"),
            ),
            PopupMenuItem(
              value: 4,
              child: Text("Verify security code"),
            ),
          ],)
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            height: .2,
            color: dividerColor,
          ),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(imgURL),
              ),
            ),
            const SizedBox(
              height: 07,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                name,
                style: const TextStyle(
                    fontSize: 22, fontWeight: FontWeight.w500, color: textColor),
              ),
            ),
            const SizedBox(
              height: 02,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                '+880 1891-XXXXXX',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: textColor.withOpacity(0.6),
                ),
              ),
            ),
            const SizedBox(
              height: 05,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Last seen yesterday at 8:03 PM',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: textColor.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: dividerColor),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.call_outlined,
                            color: floatingActionButtonColor,
                          ),
                          Text(
                            'Audio',
                            style: TextStyle(color: textColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: dividerColor),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.videocam_outlined,
                            color: floatingActionButtonColor,
                          ),
                          Text(
                            'Video',
                            style: TextStyle(color: textColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: dividerColor),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.search_outlined,
                            color: floatingActionButtonColor,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(color: textColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 7,
              color: Colors.black,
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hey there! I am using WhatsApp.',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: textColor,
                  ),
                ),
              ),
            ),
            Container(
              height: 7,
              color: Colors.black,
            ),
            SettingsItemListsWithoutSubTitle(
              iconName: Icons.notifications_none,
              title: 'Notifications', backColor: appBarColor, foreColor: textColor.withOpacity(0.7), textColor: textColor,
            ),
            SettingsItemListsWithoutSubTitle(
              iconName: Icons.image_outlined,
              title: 'Media visibility', backColor: appBarColor, foreColor: textColor.withOpacity(0.7), textColor: textColor,
            ),
            Container(
              height: 7,
              color: Colors.black,
            ),
            const SettingsItemLists(
              iconName: Icons.lock_outline,
              title: 'Encryption',
              subTitle:
                  'Messages and calls are end-to-end encrypted. Tap to verify.',
            ),
            const SettingsItemLists(
              iconName: Icons.access_time_outlined,
              title: 'Disappearing messages',
              subTitle:
              'off',
            ),
            Container(
              height: 7,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top: 8, bottom: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'No group in common',
                  style: TextStyle(
                      color: textColor.withOpacity(0.7), fontSize: 14),
                ),
              ),
            ),
            SettingsItemListsWithoutSubTitle(
              iconName: Icons.group_outlined,
              title: 'Create group with $name', backColor: floatingActionButtonColor, foreColor: floatingActionButtonIconColor, textColor: textColor,
            ),
            const SizedBox(height: 5,),
            Container(
              height: 7,
              color: Colors.black,
            ),
            SettingsItemListsWithoutSubTitle(
              iconName: Icons.block,
              title: 'Block $name', backColor: appBarColor, foreColor: Colors.red, textColor: Colors.red,
            ),
            SettingsItemListsWithoutSubTitle(
              iconName: Icons.thumb_down_outlined,
              title: 'Report $name', backColor: appBarColor, foreColor: Colors.red, textColor: Colors.red,
            ),
            Container(
              height: 30,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}


class SettingsItemListsWithoutSubTitle extends StatelessWidget {
  const SettingsItemListsWithoutSubTitle({
    super.key,
    required this.iconName,
    required this.title,
    required this.backColor,
    required this.foreColor,
    required this.textColor,
  });

  final IconData iconName;
  final String title;
  final Color backColor;
  final Color foreColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 7, bottom: 7),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: backColor,
            foregroundColor: foreColor,
            child: Icon(
              iconName,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: textColor, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}



class SettingsItemLists extends StatelessWidget {
  const SettingsItemLists({
    super.key,
    required this.iconName,
    required this.title,
    required this.subTitle,
  });

  final IconData iconName;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 7, bottom: 7),
      child: Row(
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: textColor, fontSize: 16),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      color: textColor.withOpacity(0.7), fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
