import 'package:dscan/screen/home.dart';
import 'package:dscan/screen/recent.dart';
import 'package:dscan/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';

final indexNavRiverpod = StateNotifierProvider((ref) => NavbarRiverpod());

class NavbarRiverpod extends StateNotifier<int> {
  List<Widget> listScreen = [HomeScreen(), RecentScreen(), SettingsScreen()];

  NavbarRiverpod() : super(0);

  int changeScreen(int index) => state = index;

  Widget showScreen() => listScreen[state];
}
