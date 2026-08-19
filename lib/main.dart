import 'package:dscan/nav/navbar.dart';
import 'package:dscan/route/route.dart';
import 'package:dscan/screen/home.dart';
import 'package:dscan/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: RouteNav.routeNav,
      debugShowCheckedModeBanner: false,
      theme: MyTheme().lightTheme,
      builder: (context, child) {
        return Material(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: SafeArea(child: child!),
          ),
        );
      },
    );
  }
}
