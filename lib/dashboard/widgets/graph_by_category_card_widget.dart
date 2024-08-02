// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:data_dashboard_desktop_app/models/graph_by_category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GraphByCategoryCardWidget extends StatelessWidget {
  final GraphByCategoryModel graphByCategory;
  final int value;
  final int groupValue;
  final ValueChanged<int?> onChanged;
  const GraphByCategoryCardWidget({
    super.key,
    required this.graphByCategory,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;
    return Column(
      children: [
        GestureDetector(
          onTap: () => onChanged(value),
          child: SizedBox(
            height: MediaQuery.of(context).size.width * 0.13,
            width: MediaQuery.of(context).size.width * 0.28,
            child: Stack(
              children: [
                SvgPicture.asset(
                  height: MediaQuery.of(context).size.width * 0.13,
                  width: MediaQuery.of(context).size.width * 0.28,
                  graphByCategory.image,
                  fit: BoxFit.contain,
                ),
                if (isSelected)
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .surfaceContainerLowest
                          .withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1),
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      graphByCategory.description,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(graphByCategory.label)
      ],
    );
  }
}
