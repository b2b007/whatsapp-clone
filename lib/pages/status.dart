import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 28),
          onPressed: () {
            Get.back();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.black12,
              ),
            ),
            SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 16,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.black26,
                  ),
                ),
                SizedBox(height: 6),
                Container(
                  height: 12,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
            onSelected: (value) {},
            icon: Icon(Icons.more_vert, color: Colors.black, size: 30),
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(child: Text('Mute           '), value: 'mute'),
            ],
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text("FlutLab is on your service!"),
                Icon(Icons.mood),
              ],
            ),
          ),
          Icon(
            Icons.expand_less,
            color: Colors.black,
          ),
          Text('REPLY'),
        ],
      ),
    );
  }
}
