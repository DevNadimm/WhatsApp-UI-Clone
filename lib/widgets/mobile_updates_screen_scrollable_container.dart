import 'package:flutter/material.dart';

import '../colors.dart';
import '../info.dart';

class MobileUpdatesScreenScrollableContainer extends StatelessWidget {
  const MobileUpdatesScreenScrollableContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 18.0),
          ...List.generate(
            channels.length,
            (index) {
              return Container(
                margin: const EdgeInsets.only(right: 11),
                padding: const EdgeInsets.all(8),
                width: 135,
                height: 160,
                decoration: BoxDecoration(
                  color: appBarColor,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: dividerColor),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(
                            channels[index]["profilePic"].toString(),
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: appBarColor,
                            radius: 12,
                            child: Icon(
                              Icons.verified,
                              size: 20,
                              color: Colors.green,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      channels[index]['name'].toString(),
                      style: const TextStyle(
                          color: textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0XFF0f3529),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          'Follow',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0XFFd7fbd0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
