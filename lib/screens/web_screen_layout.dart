import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/web_chat_app_bar.dart';
import 'package:whatsapp_clone/widgets/web_input_bar.dart';
import 'package:whatsapp_clone/widgets/web_search_bar.dart';
import '../widgets/chat_list.dart';
import '../widgets/contacts_list.dart';
import '../widgets/web_profile_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            flex: 1,
            child: Column(
              children: [
                WebProfileBar(),
                WebSearchBar(),
                Expanded(
                  child: ContactsList(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/backgroundImage.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Column(
                children: [
                  WebChatAppBar(),
                  SizedBox(
                    height: 05,
                  ),
                  Expanded(
                    child: ChatList(),
                  ),
                  SizedBox(
                    height: 05,
                  ),
                  WebInputBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
