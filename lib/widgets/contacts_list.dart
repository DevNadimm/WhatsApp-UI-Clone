import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/screens/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MobileChatScreen(name: info[index]['name'].toString(), imgURL: info[index]['profilePic'].toString(),),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  info[index]['name'].toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Text(
                    info[index]['message'].toString(),
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    info[index]['profilePic'].toString(),
                  ),
                  backgroundColor: Colors.grey,
                  radius: 26,
                ),
                trailing: Text(
                  info[index]['time'].toString(),
                  style: const TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
