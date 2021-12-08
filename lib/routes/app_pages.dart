import 'package:comcom/page/home/bindings/web_home_binding.dart';
import 'package:comcom/page/home/ui/views/web_home_view.dart';
import 'package:comcom/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const init = Routes.homeWeb;

  static final routes = [
    GetPage(
        name: Routes.homeWeb,
        page: () => const WebHomeView(),
        binding: WebHomeBinding(),
        children: [
          // GetPage(
          //   name: Routes.COUNTRY,
          //   page: () => CountryView(),
          //   children: [
          //     GetPage(
          //       name: Routes.DETAILS,
          //       page: () => DetailsView(),
          //     ),
          //   ],
          // ),
        ]),
  ];
}
