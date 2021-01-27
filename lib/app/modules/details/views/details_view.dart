import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fluttertaskapp/app/data/DetailText.dart';
import 'package:fluttertaskapp/app/data/styles/colors.dart';
import 'package:fluttertaskapp/app/modules/details/controllers/details_controller.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetailsView extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(controller.name),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          FadeInDown(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: Get.height / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                        target: LatLng(controller.lat, controller.lon),
                        zoom: 2),
                    onMapCreated: controller.onMapCreated,
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    buildingsEnabled: true,
                    trafficEnabled: true,
                    markers: {
                      Marker(
                          markerId: MarkerId("0"),
                          position: LatLng(controller.lat, controller.lon),
                          infoWindow: InfoWindow(
                              title: controller.name,
                              snippet: "slogan :" +
                                  controller.slogan +
                                  "    address : " +
                                  controller.address))
                    },
                  ),
                ),
              ),
            ),
          ),
          FadeInUp(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(controller.img)),
                          height: 200,
                        ),
                      ),
                      Divider(),
                      DetailText(
                        Txt: "Company Name :",
                        Detail: controller.name,
                      ),
                      Divider(),
                      DetailText(
                        Txt: "Company address :",
                        Detail: controller.address,
                      ),
                      Divider(),
                      DetailText(
                        Txt: "Company Slogan :",
                        Detail: controller.slogan,
                      ),
                      Divider(),
                      DetailText(
                        Txt: "Company Date :",
                        Detail: controller.date,
                      ),
                      SizedBox(
                        height: 10,
                      )
                      // DetailText(Text: "Company Name :",Detail: controller.name,),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
