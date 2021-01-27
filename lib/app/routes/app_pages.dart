import 'package:fluttertaskapp/app/modules/details/bindings/details_binding.dart';
import 'package:fluttertaskapp/app/modules/details/views/details_view.dart';
import 'package:fluttertaskapp/app/modules/home/bindings/home_binding.dart';
import 'package:fluttertaskapp/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => DetailsView(),
      binding: DetailsBinding(),
    ),
  ];
}
