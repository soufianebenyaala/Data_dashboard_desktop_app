import 'package:data_dashboard_desktop_app/dashboard/widgets/general_statistic_card_widget.dart';
import 'package:data_dashboard_desktop_app/dashboard/widgets/see_more_widget.dart';
import 'package:data_dashboard_desktop_app/models/general_statistic_model.dart';
import 'package:flutter/material.dart';

class GeneralStatisticSectionWidget extends StatefulWidget {
  const GeneralStatisticSectionWidget({super.key});

  @override
  State<GeneralStatisticSectionWidget> createState() =>
      _GeneralStatisticSectionWidgetState();
}

class _GeneralStatisticSectionWidgetState
    extends State<GeneralStatisticSectionWidget> {
  bool isSeeMore = false;
  @override
  Widget build(BuildContext context) {
    int numberOfCard =
        ((MediaQuery.of(context).size.width - 250) / 290).floor();

    return isSeeMore
        ? SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Wrap(
              children: [
                ...generalStatistics.map(
                  (e) => GeneralStatisticCardWidget(
                    generalStatistic: e,
                    isSeeMore: isSeeMore,
                  ),
                ),
                SeeMoreWidget(
                    isSeeMore: isSeeMore,
                    onTapSeeMore: () {
                      setState(() {
                        isSeeMore = !isSeeMore;
                      });
                    }),
              ],
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...generalStatistics
                  .getRange(
                      0,
                      generalStatistics.length > numberOfCard
                          ? numberOfCard
                          : generalStatistics.length)
                  .map(
                    (e) => GeneralStatisticCardWidget(
                      generalStatistic: e,
                      isSeeMore: isSeeMore,
                    ),
                  ),
              SeeMoreWidget(
                  isSeeMore: isSeeMore,
                  onTapSeeMore: () {
                    setState(() {
                      isSeeMore = !isSeeMore;
                    });
                  }),
            ],
          );
  }
}
