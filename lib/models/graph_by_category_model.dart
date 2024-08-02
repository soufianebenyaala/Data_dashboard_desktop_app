// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:data_dashboard_desktop_app/utils/assets.dart';

class GraphByCategoryModel {
  final int index;
  final String image;
  final String label;
  final String description;
  GraphByCategoryModel(
      {required this.index,
      required this.image,
      required this.label,
      required this.description});
}

List<GraphByCategoryModel> graphByCategories = [
  GraphByCategoryModel(
    index: 1,
    image: Assets.graph1,
    label: 'Entered and completed doctoral degrees',
    description:
        'The diagram shows an overview of agreements entered into (start of funding) or completed doctoral degrees (dissertations) over the past ten years. The figures are updated male.',
  ),
  GraphByCategoryModel(
    index: 2,
    image: Assets.graph2,
    label: 'Current status of agreements entered into',
    description: 'Current status of agreements entered into',
  ),
  GraphByCategoryModel(
    index: 3,
    image: Assets.graph3,
    label: 'Gross and net completion time on average',
    description:
        'The table shows the development over time fo gross and net throughput time on average for all completed doctoral degrees.--',
  ),
];
