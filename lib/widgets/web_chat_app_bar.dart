import 'package:flutter/material.dart';
import 'package:whatsapp_clone/info.dart';

import '../colors.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.085,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(width: 1, color: dividerColor),
          ),
          color: appBarColor),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/D5603AQEmYNjlhg5fiA/profile-displayphoto-shrink_800_800/0/1689146671020?e=1723680000&v=beta&t=uLvaE4S3JwEpm4yeUaNsapcEVSacPu1KjaO-9R9H9Bo'),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            info[0]['name'].toString(),
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
    );
  }
}
