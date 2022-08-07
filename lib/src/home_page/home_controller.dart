import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mrec_app/tools/router.dart';
import 'package:mrec_app/utils/navigation_service.dart';

final homePageControllerProvider = Provider.autoDispose<HomePageController>(
    ((ref) => HomePageController(ref.read)));

class HomePageController {
  HomePageController(this._read);
  final Reader _read;

  enter() {
    NavigationService.replaceTo(Flurorouter.principalMenu);
  }
}

final homePageNotifier = ChangeNotifierProvider.autoDispose<HomePageNotifier>(
    (ref) => HomePageNotifier());

class HomePageNotifier extends ChangeNotifier {}
