import 'package:flutter/material.dart';

import '../colors.dart';

class MobileCustomAppBar extends StatelessWidget {
  const MobileCustomAppBar(
      {super.key, required this.name, required this.imgURL});

  final String imgURL;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.07,
      decoration: const BoxDecoration(color: appBarColor),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(imgURL),
          ),
          const SizedBox(
            width: 07,
          ),
          Text(
            overflow: TextOverflow.ellipsis,
            name,
            style: const TextStyle(fontSize: 19),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.video_call_outlined,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.call_outlined,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
