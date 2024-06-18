import 'package:flutter/material.dart';
import '../colors.dart';
import '../info.dart';

class MobileUpdatesScreen extends StatelessWidget {
  const MobileUpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        foregroundColor: textColor,
        elevation: 0,
        title: const Text(
          'Updates',
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
      body: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Status',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: textColor),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: textColor,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(
                        user[0]["profilePic"].toString(),
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 10,
                        child: Icon(
                          Icons.add,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'My status',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    Text(
                      'Tap to add status update',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: textColor.withOpacity(0.7)),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Divider(
            height: 0,
            color: dividerColor,
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Channels',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: textColor),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: textColor,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              'Stay updated on topics that matter to you. Find channels to follow below',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: textColor.withOpacity(0.7),),
            ),
          ),
        ],
      ),
    );
  }
}
