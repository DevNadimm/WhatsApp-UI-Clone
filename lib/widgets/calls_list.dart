import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/screens/mobile_audio_call_screen.dart';

class CallsList extends StatelessWidget {
  const CallsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: calls.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                calls[index]['name'].toString(),
                style: const TextStyle(
                  fontSize: 18,
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Transform.rotate(
                      angle:
                          calls[index]['icon'] == Icons.arrow_upward ? 45 : 0.9,
                      child: Icon(
                        calls[index]['icon'] as IconData?,
                        // Pass IconData directly
                        size: 17,
                        color: floatingActionButtonColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    // Add spacing between icon and text
                    Text(
                      calls[index]['date'].toString(),
                      style: const TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  calls[index]['profilePic'].toString(),
                ),
                backgroundColor: Colors.grey,
                radius: 26,
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MobileAudioCallScreen(
                        name: calls[index]['name'].toString(),
                        imgURL: calls[index]['profilePic'].toString(),
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.call_outlined, color: textColor),
              ),
            ),
          ),
        );
      },
    );
  }
}
