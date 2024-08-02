import 'package:data_dashboard_desktop_app/dashboard/dashboard_screen.dart';
import 'package:data_dashboard_desktop_app/models/destination_modal.dart';
import 'package:data_dashboard_desktop_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    List<DestinationModal> destinations = [
      DestinationModal(icon: Assets.dashboard, label: 'label'),
      DestinationModal(icon: Assets.dashboardOrange, label: 'label'),
      DestinationModal(icon: Assets.dashboardBlue, label: 'label'),
      DestinationModal(icon: Assets.dashboardPink, label: 'label'),
    ];
    List<Widget> screens = [
      DashboardScreen(),
      DashboardScreen(),
      DashboardScreen(),
    ];
    return Row(
      children: [
        NavigationRail(
          backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
          useIndicator: false,
          destinations: destinations
              .map(
                (e) => NavigationRailDestination(
                    icon: SvgPicture.asset(e.icon), label: Text(e.label)),
              )
              .toList(),
          selectedIndex: selectedIndex,
        ),
        Expanded(
          child: screens[selectedIndex],
        )
      ],
    );
  }
}
