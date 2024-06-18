import 'package:flutter/material.dart';

import '../colors.dart';

class WebInputBar extends StatelessWidget {
  const WebInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.07,
      decoration: const BoxDecoration(color: appBarColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 05),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.emoji_emotions_outlined,
                size: 22,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.attach_file, size: 22),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  // fillColor: searchBarColor,
                  // filled: true,
                  hintText: ('Type a message'),
                  hintStyle: const TextStyle(
                    fontSize: 15,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic_none,
                size: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
