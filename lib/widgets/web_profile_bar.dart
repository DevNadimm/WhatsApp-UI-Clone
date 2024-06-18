import 'package:flutter/material.dart';
import '../colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .085,
      width: MediaQuery.of(context).size.width * .25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(width: 1, color: dividerColor),
          ),
          color: appBarColor),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/D4D03AQGPNbkFYBpj4A/profile-displayphoto-shrink_800_800/0/1710974384324?e=1723680000&v=beta&t=REVnbDMTWc6PDbR1Qvh2AwUX78FECdiG_9VdLJZDd2I'),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
    );
  }
}
