import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab4Screen(),
    Tab3Screen(),
    Tab1Screen(),
    Tab2Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.qr_code_scanner_outlined),
          selectedIcon: const Icon(Icons.qr_code_scanner, color: AppTheme.primaryColor),
          label: 'Barcode',
        ),
        NavigationDestination(
          icon: const Icon(Icons.scale_outlined),
          selectedIcon: const Icon(Icons.scale, color: AppTheme.primaryColor),
          label: 'Progress',
        ),
        NavigationDestination(
          icon: const Icon(Icons.pie_chart_outline_rounded),
          selectedIcon: const Icon(Icons.pie_chart, color: AppTheme.primaryColor),
          label: 'Macros',
        ),
        NavigationDestination(
          icon: const Icon(Icons.lunch_dining_outlined),
          selectedIcon: const Icon(Icons.lunch_dining, color: AppTheme.primaryColor),
          label: 'Tracker',
        ),
        ],
      ),
    );
  }
}
