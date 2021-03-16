import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:huun_community/controller/controller.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(title: Text('首頁')),
      body: Center(
        child: Obx(() => Text(
              "Clicks: ${c.count}",
              style: TextStyle(fontSize: 50),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => c.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
