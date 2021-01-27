import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetailsController extends GetxController {
  final data = Get.arguments;
  get name => data[0];
  get slogan => data[1];
  get img => data[2];
  get date => data[3];
  get lat => data[4];
  get lon => data[5];
  get address => data[6];

  GoogleMapController mapController;

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}
}
