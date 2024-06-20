import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_audio_call_screen.dart';
import 'package:whatsapp_clone/screens/mobile_friend_profile_screen.dart';
import '../colors.dart';
import '../screens/mobile_video_call_screen.dart';

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
          Expanded(
            child: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_) => MobileFriendProfileScreen(name: name, imgURL: imgURL)));},
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                name,
                style: const TextStyle(fontSize: 19,color: textColor),
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.videocam_outlined,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MobileVideoCallScreen(name: name),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.call_outlined,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MobileAudioCallScreen(name: name, imgURL: imgURL,),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
