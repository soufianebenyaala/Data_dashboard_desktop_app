// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:data_dashboard_desktop_app/dashboard/widgets/graph_by_category_card_widget.dart';
import 'package:data_dashboard_desktop_app/models/graph_by_category_model.dart';
import 'package:flutter/material.dart';

class GraphByCategoryWidget extends StatelessWidget {
  final ValueChanged<int?> onChanged;
  final int groupValue;
  const GraphByCategoryWidget({
    super.key,
    required this.onChanged,
    required this.groupValue,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: MediaQuery.of(context).size.width * 0.02,
      children: [
        ...graphByCategories.map((graphByCategory) {
          return GraphByCategoryCardWidget(
            groupValue: groupValue,
            value: graphByCategory.index,
            graphByCategory: graphByCategory,
            onChanged: onChanged,
          );
        }),
      ],
    );
  }
}
