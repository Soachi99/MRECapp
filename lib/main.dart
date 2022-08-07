import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mrec_app/tools/router.dart';
import 'package:mrec_app/utils/navigation_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Flurorouter.configureRoutes();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MREC App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/home',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: NavigationService.navigatorKey,
    );
  }
}
