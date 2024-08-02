import 'package:data_dashboard_desktop_app/layout_widget.dart';
import 'package:data_dashboard_desktop_app/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'data dashboard desktop app',
      darkTheme: MaterialTheme.dark(),
      theme: MaterialTheme.light(),
      home: const LayoutWidget(),
    );
  }
}
