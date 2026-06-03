import 'package:dscan/riverpod/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Navbar extends ConsumerWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateNav = ref.watch(indexNavRiverpod.notifier);
    final currentIndex = ref.watch(indexNavRiverpod);
    return Scaffold(
      body: stateNav.showScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) => stateNav.changeScreen(value),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Scan", ),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "Recent"),
        ],
      ),
    );
  }
}
