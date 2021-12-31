import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_mal_tutorial/components/chat%20tile.dart';
import 'package:whatsapp_mal_tutorial/components/divider.dart';
import 'package:whatsapp_mal_tutorial/components/wa%20tab.dart';
import 'package:whatsapp_mal_tutorial/screens/callscreen.dart';
import 'package:whatsapp_mal_tutorial/screens/statusscreen.dart';
import 'package:whatsapp_mal_tutorial/whatsapp data.dart';

Data data = Data();

class ChatScreen extends StatelessWidget {
  static const String id = 'chatscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              size: 26,
            ),
            onPressed: () {},
          ),
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff075e54),
          leading: Container(
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.white.withOpacity(0.5),
              size: 28,
            ),
          ),
          actions: [
            WhatsAppTabs(
              label: 'CHATS',
              fn: () => Navigator.pushNamed(context, ChatScreen.id),
            ),
            WhatsAppTabs(
              label: 'STATUS',
              fn: () => Navigator.pushNamed(context, StatusScreen.id),
            ),
            WhatsAppTabs(
              label: 'CALLS',
              fn: () => Navigator.pushNamed(context, CallScreen.id),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
            backgroundColor: Color(0xff25D366),
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ChatTile(
          name: data.chat.values.elementAt(index).elementAt(0),
          img: data.chat.values.elementAt(index).elementAt(1),
          msg: data.chat.values.elementAt(index).elementAt(2),
          time: data.chat.values.elementAt(index).elementAt(3),
        ),
        separatorBuilder: (context, index) => Seperator(),
        itemCount: data.chat.length,
      ),
    );
  }
}
