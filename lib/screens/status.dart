import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      itemCount: 5,
      itemBuilder: (context, index) => Container(
        height: 80,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: TextButton(
          onPressed: () {
            Get.toNamed('/statusPage');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: index == 0 ? Colors.black12 : Colors.white,
                  border: index == 0 ? null : Border.all(width: 3, color: Colors.green),
                ),
                child: index == 0
                    ? Align(
                        alignment: Alignment(1.2, 1.2),
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.green,
                          size: 30.0,
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.black12,
                        ),
                      ),
              ),
              SizedBox(width: 16),
              Expanded(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
