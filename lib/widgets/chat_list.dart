import 'package:flutter/cupertino.dart';
import 'package:whatsapp_ui_complete/info.dart';
import 'package:whatsapp_ui_complete/widgets/my_message_card.dart';
import 'package:whatsapp_ui_complete/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      physics: const BouncingScrollPhysics(),
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        } else {
          return SenderMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
      },
    );
  }
}
