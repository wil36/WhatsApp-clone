import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_complete/colors.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * 0.75,
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
            'https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg',
          )),
          const SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Wilfrid Tiam',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                'En Ligne',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.videocam_outlined, color: Colors.grey)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call_outlined, color: Colors.grey)),
          const VerticalDivider(width: 20),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.grey)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz, color: Colors.grey)),
        ],
      ),
    );
  }
}
