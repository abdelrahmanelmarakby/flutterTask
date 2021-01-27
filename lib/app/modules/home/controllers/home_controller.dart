import 'dart:convert';

import 'package:fluttertaskapp/app/modules/home/models/company_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Future<List<comps>> listCompanies() async {
    final response =
        await http.get('https://my.api.mockaroo.com/comps.json?key=66946560');
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<comps>((i) => comps.fromJson(i)).toList();
    } else {
      throw Exception('asd');
    }
  }

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}
}
