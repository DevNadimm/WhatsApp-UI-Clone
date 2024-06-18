import 'package:flutter/material.dart';
import '../colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .075,
      width: MediaQuery.of(context).size.width * .25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: dividerColor),
          ),
          color: backgroundColor),
      child: TextField(
        decoration: InputDecoration(
          fillColor: searchBarColor,
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            size: 20,
          ),
          hintText: ('Search or start a new chat'),
          hintStyle: const TextStyle(
            fontSize: 13,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
