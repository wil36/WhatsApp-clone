import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_complete/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),
      child: Row(
        children: [
          const CircleAvatar(
              backgroundImage: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
          )),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.comment, color: Colors.grey)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add, color: Colors.grey)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz, color: Colors.grey)),
        ],
      ),
    );
  }
}
