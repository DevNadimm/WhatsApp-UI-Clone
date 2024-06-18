import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/mobile_custom_app_bar.dart';
import '../colors.dart';
import '../widgets/chat_list.dart';
import '../widgets/mobile_input_bar.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key, required this.name, required this.imgURL});

  final String imgURL;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgroundImage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              MobileCustomAppBar(
                name: name,
                imgURL: imgURL,
              ),
              const Divider(
                height: .2,
                color: dividerColor,
              ),
              const SizedBox(
                height: 05,
              ),
              const Expanded(
                child: ChatList(),
              ),
              const MobileInputBar(),
            ],
          ),
        ),
      ),
    );
  }
}
