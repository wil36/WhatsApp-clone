import 'package:flutter/material.dart';
import 'package:whatsapp_ui_complete/colors.dart';
import 'package:whatsapp_ui_complete/widgets/contact_list.dart';

class MobileLayoutScreen extends StatelessWidget {
  const MobileLayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: const Text(
              'Wilfrid',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              )
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(
                    Icons.camera_alt_rounded,
                  ),
                ),
                Tab(
                  text: 'DISC.',
                ),
                Tab(
                  text: 'STATUT',
                ),
                Tab(
                  text: 'APPELS',
                ),
              ],
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: const ContactList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: tabColor,
            child: const Icon(
              Icons.comment,
              color: Colors.white,
            ),
          ),
        ));
  }
}
