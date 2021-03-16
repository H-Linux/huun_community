import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen_logic.dart';
import 'screen_state.dart';

class ScreenPage extends StatelessWidget {
  final ScreenLogic logic = Get.put(ScreenLogic());
  final ScreenState state = Get.find<ScreenLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Center(
              child: Text(
                'Neumorphism UI',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 20,
            right: 20,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Obx(
                      () => Text(
                    '跳过 ${logic.count}',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  /*boxShadow: [
                    BoxShadow(
                      color: SetColor.shadowLight,
                      spreadRadius: 1,
                      offset: Offset(1, 1),
                    ),
                    BoxShadow(
                      color: SetColor.shadowDarkLight,
                      spreadRadius: 1,
                      offset: Offset(-1, -1),
                    ),
                  ],*/
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
