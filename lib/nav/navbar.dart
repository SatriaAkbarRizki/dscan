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
      bottomNavigationBar: NavigationBar(
        
        selectedIndex: currentIndex,
        onDestinationSelected: (value) => stateNav.changeScreen(value),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Scan",
          ),
          NavigationDestination(
            icon: Icon(Icons.history_outlined),
            selectedIcon: Icon(Icons.history),
            label: "Recent",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
