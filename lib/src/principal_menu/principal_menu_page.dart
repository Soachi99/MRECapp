import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrincipalMenuPage extends ConsumerStatefulWidget {
  const PrincipalMenuPage({Key? key}) : super(key: key);

  @override
  PrincipalMenuPageState createState() => PrincipalMenuPageState();
}

class PrincipalMenuPageState extends ConsumerState<PrincipalMenuPage> {
  @override
  Widget build(BuildContext context) {
    /* final controller = ref.watch(homePageControllerProvider); */
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          top: false,
          bottom: false,
          child: Container(),
        ));
  }
}
