import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChatPage'),
        leadingWidth: 70,
        backgroundColor: Color.fromRGBO(8, 97, 61, 1),
        leading: TextButton(
          onPressed: () {
            Get.back();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.arrow_back, size: 30, color: Colors.white),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_ic_call),
            onPressed: () {},
          ),
          SizedBox(width: 12),
          PopupMenuButton(
            iconSize: 28,
            padding: EdgeInsets.only(right: 12),
            onSelected: (value) {},
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(child: Text("Group info"), value: "1"),
              PopupMenuItem(child: Text("Group media"), value: "2"),
              PopupMenuItem(child: Text("Search"), value: "3"),
              PopupMenuItem(child: Text("Mute notifications   "), value: "4"),
              PopupMenuItem(child: Text("Wallpaper"), value: "5"),
              PopupMenuItem(child: Text("More"), value: "6"),
            ],
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://theabbie.github.io/blog/assets/official-whatsapp-background-image.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) => Row(
                  mainAxisAlignment: index % 2 == 0 ? MainAxisAlignment.start : MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: index % 2 == 0 ? Colors.white : Colors.greenAccent,
                      ),
                      child: Container(height: 30, width: 100),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.mood, color: Colors.black54),
                          onPressed: () {},
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: TextField(
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Type a message',
                            ),
                          ),
                        ),
                        Transform.rotate(
                          angle: -45,
                          child: IconButton(
                            icon: Icon(Icons.attach_file),
                            onPressed: () {},
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed: () {},
                        ),
                        SizedBox(width: 4),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.green,
                  ),
                  child: Icon(Icons.mic, color: Colors.white),
                ),
                SizedBox(width: 8),
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
