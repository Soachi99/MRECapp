import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mrec_app/tools/dimens.dart';
import 'package:mrec_app/tools/images.dart';
import 'package:mrec_app/widgets/primary_button.dart';

class PrincipalMenuPage extends ConsumerStatefulWidget {
  const PrincipalMenuPage({Key? key}) : super(key: key);

  @override
  PrincipalMenuPageState createState() => PrincipalMenuPageState();
}

class PrincipalMenuPageState extends ConsumerState<PrincipalMenuPage> {
  @override
  Widget build(BuildContext context) {
    /* final controller = ref.watch(homePageControllerProvider); */
    return Background(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: dimens.symetric(context, .04, .2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [PrimaryButton(label: "Canciones")],
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          top: false,
          bottom: false,
          child: Container(
            width: dimens.fullWidth(context),
            height: dimens.fullHeight(context),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(images.background), fit: BoxFit.fill)),
            child: child,
          ),
        ));
  }
}
