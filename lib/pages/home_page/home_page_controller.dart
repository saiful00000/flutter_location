import 'package:flutter_location/pages/location_page/location_page.dart';
import 'package:flutter_location/widgets/progress_bars.dart';
import 'package:flutter_location/widgets/snackbars.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:get/get.dart';
import 'package:location/location.dart';

class HomePageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void getLocationPermission() async {
    showProgressBar();
    Location location = Location();
    bool serviceEnabled = await location.serviceEnabled();
    if(!serviceEnabled){
      serviceEnabled = await location.requestService();
      if(!serviceEnabled){
        Get.back();
        showSnackBar(message: 'Location service not enabled');
        return;
      }
    }

    PermissionStatus permissionStatus = await location.hasPermission();

    if(permissionStatus == PermissionStatus.denied){
      permissionStatus = await location.requestPermission();
      if(permissionStatus == PermissionStatus.denied){
        Get.back();
        showSnackBar(message: 'Location permission denied.');
        return;
      }
      if(permissionStatus == PermissionStatus.deniedForever){
        showSnackBar(message: 'Location permission denied forever.');
        Get.back();
        await Geolocator.openLocationSettings();
        return;
      }
    }

    LocationData locationData = await location.getLocation();
    List<geocoding.Placemark> placeMarks =
    await geocoding.placemarkFromCoordinates(
        locationData.latitude, locationData.longitude);

    Get.back();
    Get.to(LocationPage(placeMarks.first.toString()),
        transition: Transition.cupertino);

  }
}