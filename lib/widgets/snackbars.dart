import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSnackBar({@required String message}){
  Get.rawSnackbar(message: message);
}