import 'package:data_dashboard_desktop_app/models/general_statistic_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GeneralStatisticCardWidget extends StatelessWidget {
  final GeneralStatisticModel generalStatistic;
  final bool isSeeMore;
  const GeneralStatisticCardWidget({
    super.key,
    required this.generalStatistic,
    required this.isSeeMore,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20, bottom: isSeeMore ? 20 : 0),
      child: Container(
        height: 80,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 0.2),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Text(
              generalStatistic.value,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: generalStatistic.color,
                  ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Tooltip(
                  message: generalStatistic.label,
                  child: Text(
                    generalStatistic.label,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
            ),
            if (generalStatistic.svgIcon != null)
              RotatedBox(
                quarterTurns: generalStatistic.isDown ? 1 : 0,
                child: SvgPicture.asset(
                  width: 20,
                  height: 20,
                  colorFilter: ColorFilter.mode(
                    generalStatistic.color,
                    BlendMode.srcIn,
                  ),
                  generalStatistic.svgIcon!,
                ),
              ),
            if (generalStatistic.svgIcon != null)
              const SizedBox(
                width: 15,
              ),
          ],
        ),
      ),
    );
  }
}
