import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => Container(
        height: 80,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.black12,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.black12),
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.black26,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            index % 2 == 0 ? Icons.call_made : Icons.call_received,
                            color: index % 4 == 0 ? Colors.green : Colors.red,
                            size: 15.0,
                          ),
                          SizedBox(width: 4),
                          Container(
                            width: 150,
                            height: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: Colors.black12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                index % 3 == 0 ? Icons.call : Icons.videocam,
                color: Colors.green,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
