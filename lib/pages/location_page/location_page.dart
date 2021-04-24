import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  String location;

  LocationPage(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Location')),
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: Text(
        location,
      ),
    );
  }
}
