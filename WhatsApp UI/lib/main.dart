import 'package:flutter/material.dart';
import 'package:whatsapp_mal_tutorial/screens/callscreen.dart';
import 'package:whatsapp_mal_tutorial/screens/chatscreen.dart';
import 'package:whatsapp_mal_tutorial/screens/statusscreen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: ChatScreen.id,
      routes: {
        ChatScreen.id: (ctx) => ChatScreen(),
        StatusScreen.id: (ctx) => StatusScreen(),
        CallScreen.id: (ctx) => CallScreen(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
