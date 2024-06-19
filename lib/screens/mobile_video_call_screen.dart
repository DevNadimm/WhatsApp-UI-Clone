import 'package:flutter/material.dart';
import '../colors.dart';

class MobileVideoCallScreen extends StatelessWidget {
  const MobileVideoCallScreen({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgroundImage.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.lock_outline,
                        size: 13,
                        color: textColor.withOpacity(0.7),
                      ),
                      const SizedBox(
                        width: 05,
                      ),
                      Text(
                        'End-to-end encrypted',
                        style: TextStyle(
                          color: textColor.withOpacity(0.7),
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_add_alt, color: textColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 56,
              ),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: textColor),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Calling',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: textColor.withOpacity(0.7),
                ),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                height: MediaQuery
                    .sizeOf(context)
                    .height * 0.12,
                decoration: const BoxDecoration(
                  color: mobileChatBoxColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 40,
                      color: textColor.withOpacity(0.7),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.flip_camera_ios_outlined,
                          size: 27,
                          color: textColor,
                        ),
                        Icon(
                          Icons.mobile_screen_share_outlined,
                          size: 27,
                          color: textColor.withOpacity(0.6),
                        ),
                        Icon(
                          Icons.videocam_off_outlined,
                          size: 27,
                          color: textColor.withOpacity(0.6),
                        ),
                        const Icon(
                          Icons.mic_off_outlined,
                          size: 27,
                          color: textColor,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.call_end_outlined,
                              size: 27,
                              color: textColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}