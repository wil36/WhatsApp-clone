import 'package:flutter/material.dart';
import 'package:whatsapp_ui_complete/colors.dart';
import 'package:whatsapp_ui_complete/widgets/chat_list.dart';
import 'package:whatsapp_ui_complete/widgets/contact_list.dart';
import 'package:whatsapp_ui_complete/widgets/web_chat_app_bar.dart';
import 'package:whatsapp_ui_complete/widgets/web_profile_bar.dart';
import 'package:whatsapp_ui_complete/widgets/web_search_bar.dart';

class WebLayoutScreen extends StatelessWidget {
  const WebLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                //web search bar
                WebProfileBar(),
                WebSearchBar(),
                ContactList(),
              ],
            ),
          ),
        ),
        //web screen
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgroundImage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const WebChatAppBar(),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.height * 0.05,
                    ),
                    child: const ChatList()),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: dividerColor,
                    ),
                  ),
                  color: chatBarMessage,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      icon: const Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.attach_file_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 15,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: searchBarColor,
                            hintText: 'Taper un message',
                            hintStyle: const TextStyle(
                              fontSize: 14,
                            ),
                            focusColor: webAppBarColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            contentPadding: const EdgeInsets.all(10),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
