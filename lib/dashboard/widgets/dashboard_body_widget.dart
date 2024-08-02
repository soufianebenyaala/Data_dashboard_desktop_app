import 'package:data_dashboard_desktop_app/dashboard/widgets/key_figures_section.dart';
import 'package:data_dashboard_desktop_app/models/destination_modal.dart';
import 'package:data_dashboard_desktop_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardBodyWidget extends StatelessWidget {
  const DashboardBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<DestinationModal> tabs = [
      DestinationModal(icon: Assets.profileIcon, label: 'Key Figures'),
      DestinationModal(icon: Assets.walletIcon, label: 'Financing'),
      DestinationModal(icon: Assets.fileIcon, label: 'Graduated'),
      DestinationModal(icon: Assets.arrowTrendUpIcon, label: 'Progress'),
    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 10,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabBar(
                dividerHeight: 0,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                tabs: tabs
                    .map(
                      (e) => Tab(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              e.icon,
                              width: 16,
                              height: 16,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(e.label)
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
              TextButton.icon(
                onPressed: () {},
                label: Text(
                  'Maintanance',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                icon: SvgPicture.asset(
                  Assets.dangerIcon,
                  width: 16,
                  height: 16,
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            KeyFiguresSection(),
            KeyFiguresSection(),
            KeyFiguresSection(),
            KeyFiguresSection(),
          ],
        ),
      ),
    );
  }
}
