import 'package:flutter/material.dart';
import 'package:pasal/presentation/resources/routes_manager.dart';
import 'package:pasal/presentation/resources/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pasal',
      theme: theme(),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.initalScreenRoute,
    );
  }
}
