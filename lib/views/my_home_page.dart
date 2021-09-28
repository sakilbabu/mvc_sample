import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:mvc/controllers/my_home_page_controller.dart';

class MyHomePage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MVC"),
      ),
      body: Center(
        child: GetBuilder<MyHomePageController>(
          init: Get.put(MyHomePageController()),
          builder: (controller) {
            return controller.result == null
                ? CircularProgressIndicator()
                : Column(children: [
                    Text(
                      controller.result!.number.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Text(controller.result!.text),
                  ]);
          },
        ),
      ),
    );
  }
}
