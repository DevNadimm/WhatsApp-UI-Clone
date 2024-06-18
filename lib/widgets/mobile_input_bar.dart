import 'package:flutter/material.dart';

import '../colors.dart';

class MobileInputBar extends StatelessWidget {
  const MobileInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.055,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    color: senderMessageColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.emoji_emotions_outlined,
                        size: 22,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          // fillColor: searchBarColor,
                          // filled: true,
                          hintText: ('Message'),
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
                        Icons.attach_file,
                        size: 22,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 05,
            ),
            const InkWell(
              child: CircleAvatar(
                backgroundColor: tabColor,
                foregroundColor: backgroundColor,
                child: Icon(Icons.mic),
              ),
            )
          ],
        ),
      ),
    );
  }
}
