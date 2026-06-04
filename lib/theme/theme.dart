import 'package:flutter/material.dart';

class MyTheme {
  final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFF8F9FA),
    primaryColor: Colors.lightBlue[800],
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontWeight: FontWeight.w900,
        fontFamily: 'Poppins',
        fontSize: 18,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: 'Poppins',
        fontSize: 14,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
      labelSmall: TextStyle(fontFamily: 'Poppins', fontSize: 10),
      bodySmall: TextStyle(fontFamily: 'Poppins', fontSize: 10, height: 1.5),
    ),

    cardTheme: CardThemeData(color: Colors.white),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: const Color(0xFFF8F9FA),
      elevation: 5,
      height: 60,
      overlayColor: WidgetStatePropertyAll(Colors.lightBlue[50]),

      labelPadding: EdgeInsets.all(0),
      shadowColor: Colors.grey,
      indicatorColor: Colors.lightBlue[800],
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,

      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 10,
            fontWeight: FontWeight.w600,
          );
        }
        return const TextStyle(fontFamily: 'Poppins', fontSize: 10);
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: Color(0xFFF8F9FA), size: 22);
        }
        return const IconThemeData(color: Color(0xFF64748B), size: 22);
      }),
    ),
  );
}
