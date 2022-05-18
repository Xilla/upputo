import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/modules/home/controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return Obx(() => Container());
  }
}
