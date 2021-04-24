import 'package:flutter/material.dart';
import 'package:flutter_location/pages/home_page/home_page_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  var _controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: _body(),
    );
  }

  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: (){
              _controller.getLocationPermission();
            },
            child: Text('Get My Address'),
          ),
        ],
      ),
    );
  }
}
