import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:simple_icons/simple_icons.dart';

PieChartSectionData apple = PieChartSectionData(
    title: 'AAPL',
    showTitle: false,
    value: 20,
    color: Colors.grey,
    radius: 80,
    badgeWidget: const Icon(SimpleIcons.apple),
    borderSide: const BorderSide(color: Colors.black, width: 2));

PieChartSectionData google = PieChartSectionData(
    title: 'GOOG',
    showTitle: false,
    value: 20,
    color: Colors.purple,
    radius: 80,
    badgeWidget: const Icon(SimpleIcons.google),
    borderSide: const BorderSide(color: Colors.black, width: 2));

PieChartSectionData amazon = PieChartSectionData(
    title: 'AMZN',
    showTitle: false,
    value: 20,
    color: Colors.yellow,
    radius: 80,
    badgeWidget: const Icon(SimpleIcons.amazon),
    borderSide: const BorderSide(color: Colors.black, width: 2));

PieChartSectionData microsoft = PieChartSectionData(
    title: 'MSFT',
    showTitle: false,
    value: 20,
    color: Colors.green,
    radius: 80,
    badgeWidget: const Icon(SimpleIcons.microsoft),
    borderSide: const BorderSide(color: Colors.black, width: 2));

PieChartSectionData facebook = PieChartSectionData(
    title: 'META',
    showTitle: false,
    value: 20,
    color: Colors.blue,
    radius: 80,
    badgeWidget: const Icon(SimpleIcons.facebook),
    borderSide: const BorderSide(color: Colors.black, width: 2));

FlBorderData borders =
    FlBorderData(show: true, border: Border.all(width: 2, color: Colors.black));
