import 'package:flutter/material.dart';
import '../colors.dart';

class MobileCommunitiesScreen extends StatelessWidget {
  const MobileCommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: textColor,
        elevation: 0,
        title: const Text(
          'Communities',
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
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/communities_img.jpg',
                scale: 7.5,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            const Text(
              'Stay connected with a community',
              style: TextStyle(
                  fontSize: 19, fontWeight: FontWeight.w500, color: textColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Communities bring members together in\ntopic-based group, and make it easy to get admin announcements. Any community yoy\'re added to will appear here.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: textColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'See example communities >',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: floatingActionButtonColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: floatingActionButtonColor,
                  foregroundColor: floatingActionButtonIconColor,
                ),
                child: const Text(
                  'Start your community',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
