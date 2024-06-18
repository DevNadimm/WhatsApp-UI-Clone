import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/sender_message_card.dart';
import 'my_message_card.dart';
import '../info.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        ); // SenderMessage => card
      },
    );
  }
}
