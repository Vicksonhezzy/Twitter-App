import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  Rx<int> currentIndex = 0.obs;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void onTap(int value) {
    currentIndex = value.obs;
  }
}
