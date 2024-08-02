// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:data_dashboard_desktop_app/utils/assets.dart';
import 'package:flutter/material.dart';

class GeneralStatisticModel {
  final String label;
  final String value;
  String? svgIcon;
  final Color color;
  bool isDown;

  GeneralStatisticModel({
    required this.label,
    required this.value,
    this.svgIcon = Assets.arrowTrendUpIcon,
    required this.color,
    this.isDown = false,
  });
}

List<GeneralStatisticModel> generalStatistics = [
  GeneralStatisticModel(
    label: 'Completed doctorates based on DBH-reports(2020)',
    value: '405',
    svgIcon: null,
    color: Colors.blue,
  ),
  GeneralStatisticModel(
    label: 'Number of active candidates',
    value: '2,727',
    color: Colors.green,
  ),
  GeneralStatisticModel(
    label: 'Withdrawal rate of PhD candidates',
    value: '7%',
    color: Colors.red,
  ),
  GeneralStatisticModel(
    label: 'Foreign Ph.D. candidates',
    value: '48%',
    color: Colors.green,
  ),
  GeneralStatisticModel(
    label: 'Brutto income decrease',
    value: '12%',
    color: Colors.red,
    isDown: true,
    
  ),
  GeneralStatisticModel(
    label: 'Farfallsprosent siste 10 ar',
    value: '7%',
    color: Colors.red,
    isDown: true,
  ),
];
