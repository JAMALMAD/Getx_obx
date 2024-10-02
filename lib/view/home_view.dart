
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/conunter_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final dependency = Get.put(Countercontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(()=> Text(dependency.count.toString(),
              style: TextStyle(fontSize: 30),)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: dependency.increament,
        child: Icon(Icons.add),
      ),
    );
  }
}
