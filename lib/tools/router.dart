import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:mrec_app/src/home_page/home_page.dart';
import 'package:mrec_app/src/principal_menu/principal_menu_page.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String home = '/home';
  static String principalMenu = '/principal-menu';

  static void configureRoutes() {
    TransitionType none = TransitionType.none;

    router.define(home,
        handler: Handler(
          handlerFunc: (context, params) => const HomePage(),
        ),
        transitionType: none);

    router.define(principalMenu,
        handler: Handler(
          handlerFunc: (context, params) => const PrincipalMenuPage(),
        ),
        transitionType: TransitionType.fadeIn);

    router.notFoundHandler =
        Handler(handlerFunc: (context, Map<String, dynamic> params) {
      return const Material(
        child: Center(
          child: Text("NOT FOUND HANDLER"),
        ),
      );
    });
  }
}
