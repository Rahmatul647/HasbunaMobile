import 'package:catering/core/router.dart';
import 'package:catering/feature/login/presentation/page/login_page.dart';
import 'package:flutter/material.dart';

void main() async {
  String initialRoute = await AppRouter().initialRoute;
  runApp(Main(
    initialRoute: initialRoute,
  ));
}

class Main extends StatelessWidget {
  final String initialRoute;
  const Main({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),);
  }
}
