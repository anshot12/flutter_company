import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/view/wigets/list_elements.dart';
import 'package:flutter_application_1/view/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Company statistic',
        theme: ThemeData(primarySwatch: Colors.grey),
        home: const MainPieScreen());
  }
}
