import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mrec_app/src/home_page/home_controller.dart';
import 'package:mrec_app/tools/images.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(homePageControllerProvider);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          top: false,
          bottom: false,
          child: Center(
            child: GestureDetector(
              onTap: () => controller.enter(),
              child: Image.asset(
                images.principal,
                fit: BoxFit.fill,
                alignment: Alignment.center,
              ),
            ),
          )),
    );
  }
}
