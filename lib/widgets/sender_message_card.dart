import 'package:flutter/material.dart';
import '../colors.dart';

class SenderMessageCard extends StatelessWidget {
  const SenderMessageCard(
      {super.key, required this.message, required this.date});

  final String message;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 8, bottom: 20, right: 18),
                child: Text(
                  message,
                ),
              ),
              Positioned(
                right: 7,
                bottom: 5,
                child: Row(
                  children: [
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 10,
                        color: Color(0XFFa0a0a0),
                      ),
                    ),
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
