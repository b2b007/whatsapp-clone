import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/camera.dart';
import 'screens/chats.dart';
import 'screens/status.dart';
import 'screens/calls.dart';

import 'pages/chat.dart';
import 'pages/status.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/chatPage', page: () => ChatPage()),
        GetPage(name: '/statusPage', page: () => StatusPage()),
      ],
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  final Controller controller = Get.put(Controller());
  final ControllerIcons = [
    null,
    Icons.chat,
    Icons.camera_alt,
    Icons.add_ic_call,
  ];

  @override
  Widget build(BuildContext context) {
    final wid = MediaQuery.of(context).size.width;
    final tabsize = (wid - 92) / 4;

    return Scaffold(
      body: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                title: Text(
                  "Whatsapp",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Color.fromRGBO(8, 97, 61, 1),
                centerTitle: false,
                floating: true,
                pinned: true,
                snap: true,
                expandedHeight: 110,
                elevation: 0,
                actions: [
                  IconButton(
                    icon: Icon(Icons.search, size: 28),
                    onPressed: () {},
                  ),
                  SizedBox(width: 15),
                  PopupMenuButton(
                    iconSize: 28,
                    padding: EdgeInsets.only(right: 12),
                    onSelected: (value) {},
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(child: Text("New group"), value: "1"),
                        PopupMenuItem(child: Text("New broadcast"), value: "2"),
                        PopupMenuItem(child: Text("WhatsApp Web"), value: "3"),
                        PopupMenuItem(child: Text("Starred messages  "), value: "4"),
                        PopupMenuItem(child: Text("Payments"), value: "5"),
                        PopupMenuItem(child: Text("Settings"), value: "6"),
                      ];
                    },
                  ),
                ],
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorWeight: 4.0,
                  labelColor: Color.fromRGBO(255, 255, 255, 1),
                  labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  unselectedLabelColor: Color.fromRGBO(34, 156, 107, 1),
                  isScrollable: true,
                  onTap: (value) {
                    controller.index.value = value;
                  },
                  tabs: [
                    Container(
                      width: 30,
                      child: Tab(child: Icon(Icons.camera_alt, size: 24)),
                    ),
                    Container(width: tabsize, child: Tab(child: Text('CHATS'))),
                    Container(width: tabsize, child: Tab(child: Text('STATUS'))),
                    Container(width: tabsize, child: Tab(child: Text('CALLS'))),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CameraScreen(),
              ChatsScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Obx(() => Icon(ControllerIcons[controller.index.value])),
        backgroundColor: Color.fromRGBO(11, 164, 23, 1),
        onPressed: () {},
      ),
    );
  }
}

class Controller extends GetxController {
  var index = 1.obs;
}
