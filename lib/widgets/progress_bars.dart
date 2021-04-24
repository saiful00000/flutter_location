
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void showProgressBar(){
  Get.dialog(
    Center(
      child: CupertinoActivityIndicator(),
    )
  );
}