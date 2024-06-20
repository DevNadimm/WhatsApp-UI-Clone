import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_profile_screen.dart';

import '../colors.dart';
import '../info.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: textColor,
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: CustomRowForProfile(),
            ),
            const Divider(
              color: dividerColor,
              height: 0,
            ),
            const SettingsItemLists(
              iconName: Icons.key_outlined,
              title: 'Account',
              subTitle: 'Security notifications, change number',
            ),
            const SettingsItemLists(
              iconName: Icons.lock_outline,
              title: 'Privacy',
              subTitle: 'Block contacts, disappearing messages',
            ),
            const SettingsItemLists(
              iconName: Icons.face,
              title: 'Avatar',
              subTitle: 'Create, edit, profile photo',
            ),
            const SettingsItemLists(
              iconName: Icons.chat_outlined,
              title: 'Chats',
              subTitle: 'Theme, wallpapers, chat history',
            ),
            const SettingsItemLists(
              iconName: Icons.notifications_none,
              title: 'Notifications',
              subTitle: 'Message, group & call tones',
            ),
            const SettingsItemLists(
              iconName: Icons.sd_storage_outlined,
              title: 'Storage and data',
              subTitle: 'Network usage, auto-download',
            ),
            const SettingsItemLists(
              iconName: Icons.language,
              title: 'App language',
              subTitle: 'English (device\'s language)',
            ),
            const SettingsItemLists(
              iconName: Icons.help_outline,
              title: 'Help',
              subTitle: 'Help center, contact us, privacy policy',
            ),
            const SizedBox(height: 10,),
            const SettingsItemListsWithoutSubTitle(
              iconName: Icons.group_outlined,
              title: 'Invite a  friend',
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Also from Meta',
                  style: TextStyle(
                      color: textColor.withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SettingsItemListsWithoutSubTitle(
              iconName: Icons.facebook_outlined,
              title: 'Open Facebook',
            ),
            const SettingsItemListsWithoutSubTitle(
              iconName: Icons.facebook_outlined,
              title: 'Open Instagram',
            ),
            const SizedBox(
              height: 10,
            )
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
  });

  final IconData iconName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
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
          Text(
            title,
            style: const TextStyle(color: textColor, fontSize: 16),
          )
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
      padding: const EdgeInsets.only(left: 16, right: 16, top: 30),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(color: textColor, fontSize: 16),
              ),
              Text(
                subTitle,
                style:
                    TextStyle(color: textColor.withOpacity(0.7), fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}



class CustomRowForProfile extends StatelessWidget {
  const CustomRowForProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_) => const MobileProfileScreen()));},
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
              user[0]["profilePic"].toString(),
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user[0]['Name'].toString(),
                style: const TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w500, color: textColor),
              ),
              Row(
                children: [
                  Text(
                    'Sleeping ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: textColor.withOpacity(0.7),
                    ),
                  ),
                  const Text(
                    '😴',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          const Row(
            children: [
              Icon(
                Icons.qr_code,
                color: floatingActionButtonColor,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_drop_down_circle_outlined,
                color: floatingActionButtonColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
