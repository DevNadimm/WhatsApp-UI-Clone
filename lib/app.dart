import 'package:flutter/material.dart';
import 'package:whatsapp_clone/responsive/responsive_layout.dart';
import 'package:whatsapp_clone/screens/web_screen_layout.dart';
import 'package:whatsapp_clone/widgets/mobile_bottom_nav_bar.dart';
import 'colors.dart';

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: appBarColor,
        popupMenuTheme: const PopupMenuThemeData(color: chatBarMessage,),
      ),
      home: const ResponsiveLayout(
        webScreenLayout: WebScreenLayout(),
        mobileScreenLayout: MobileBottomNavBar(),
      ),
    );
  }
}
