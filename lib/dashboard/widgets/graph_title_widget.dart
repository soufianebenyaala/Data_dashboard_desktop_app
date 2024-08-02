import 'package:data_dashboard_desktop_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Years { five, ten, twenty }

class GraphTitleWidget extends StatefulWidget {
  final String label;
  const GraphTitleWidget({super.key, required this.label});

  @override
  State<GraphTitleWidget> createState() => _GraphTitleWidgetState();
}

class _GraphTitleWidgetState extends State<GraphTitleWidget> {
  Years yearsView = Years.ten;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Tooltip(
              message: widget.label,
              child: Text(
                widget.label,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              width: 21,
              height: 21,
              Assets.downloadIcon,
            ),
          ],
        ),
        SegmentedButton<Years>(
          style: SegmentedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          ),
          showSelectedIcon: false,
          segments: [
            ButtonSegment(
              value: Years.twenty,
              label: Text(
                '20 YEARS',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            ButtonSegment(
              value: Years.ten,
              label: Text(
                '10 YEARS',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            ButtonSegment(
              value: Years.five,
              label: Text(
                '5 YEARS',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
          selected: <Years>{yearsView},
          onSelectionChanged: (Set<Years> newSelection) {
            setState(() {
              // By default there is only a single segment that can be
              // selected at one time, so its value is always the first
              // item in the selected set.
              yearsView = newSelection.first;
            });
          },
        ),
      ],
    );
  }
}
