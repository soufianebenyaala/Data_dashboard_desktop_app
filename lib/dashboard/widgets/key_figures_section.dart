import 'package:data_dashboard_desktop_app/dashboard/widgets/graph_by_category_widget.dart';
import 'package:data_dashboard_desktop_app/models/graph_by_category_model.dart';
import 'package:flutter/material.dart';

import 'package:data_dashboard_desktop_app/dashboard/widgets/filters_widget.dart';
import 'package:data_dashboard_desktop_app/dashboard/widgets/general_statistic_widget.dart';
import 'package:data_dashboard_desktop_app/dashboard/widgets/graph_title_widget.dart';
import 'package:data_dashboard_desktop_app/dashboard/widgets/graph_widget.dart';

class KeyFiguresSection extends StatefulWidget {
  const KeyFiguresSection({super.key});

  @override
  State<KeyFiguresSection> createState() => _KeyFiguresSectionState();
}

class _KeyFiguresSectionState extends State<KeyFiguresSection> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            const GeneralStatisticSectionWidget(),
            const SizedBox(
              height: 25,
            ),
            GraphTitleWidget(label: graphByCategories.firstWhere((element) => element.index == _value,).label),
            const SizedBox(
              height: 25,
            ),
            const FiltersWidget(),
            const SizedBox(
              height: 25,
            ),
            const GraphWidget(),
            const SizedBox(
              height: 25,
            ),
            GraphByCategoryWidget(
              groupValue: _value,
              onChanged: (value) => setState(
                () => _value = value!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
