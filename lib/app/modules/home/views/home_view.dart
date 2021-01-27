import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertaskapp/app/modules/home/controllers/home_controller.dart';
import 'package:fluttertaskapp/app/modules/home/models/company_model.dart';
import 'package:fluttertaskapp/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: FutureBuilder<List<comps>>(
          future: controller.listCompanies(),
          builder: (context, snapshot) {
            List<comps> data = snapshot.data;

            if (snapshot.data != null) {
              return ListView(
                children: [
                  Column(
                    children: List.generate(
                        data.length,
                        (index) => FadeInDownBig(
                              duration: Duration(milliseconds: 150 * index),
                              child: Container(
                                height: Get.height / 7,
                                child: GestureDetector(
                                  onTap: () =>
                                      Get.toNamed(Routes.DETAILS, arguments: [
                                    data[index].companyName,
                                    data[index].slogan,
                                    data[index].img,
                                    data[index].date,
                                    data[index].lat,
                                    data[index].lon,
                                    data[index].address
                                  ]),
                                  child: Card(
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          child: Image.network(data[index].img),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                data[index].companyName,
                                                style: GoogleFonts.archivo(
                                                    fontSize: 24),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 4),
                                                child: Text(data[index].slogan,
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 10)),
                                              ),
                                              Text("date : " + data[index].date,
                                                  style: TextStyle(
                                                      color: Colors.black54,
                                                      fontSize: 10)),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )),
                  ),
                ],
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
//000011
