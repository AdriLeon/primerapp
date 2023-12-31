import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:primerapp/presenter/bindings/app_bindings.dart';
import 'package:primerapp/presenter/views/home_page.dart';
import 'package:primerapp/presenter/views/profile_page.dart';
import 'package:primerapp/presenter/views/search_page.dart';

import '../views/message_page.dart';
import '../views/settings_page.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  var currentIndex = 0.obs;

  final pages = <String>[
    '/Search',
    '/Profile',
    '/Settings',
    '/Messages',

  ];

  void changePage(int index) {
    currentIndex.value = index;
    Get.toNamed(pages[index], id: 1);
  }

  Route? onGenerateRoute(RouteSettings settings) {

    if (settings.name == '/Search') {
      return GetPageRoute(
        settings: settings,
        page: () => SearchPage(),
        binding: SearchBinding(),
      );
    }
    if (settings.name == '/Profile') {
      return GetPageRoute(
        settings: settings,
        page: () => ProfilePage(),
        binding: ProfileBinding(),
      );
    }
    if (settings.name == '/Settings') {
      return GetPageRoute(
        settings: settings,
        page: () => SettingsPage(),
        binding: SettingsBinding(),
      );
    }
    if (settings.name == '/Messages') {
      return GetPageRoute(
        settings: settings,
        page: () => MessagePage(),
        binding: MessageBinding(),
      );
    }
    return null;
  }
}
