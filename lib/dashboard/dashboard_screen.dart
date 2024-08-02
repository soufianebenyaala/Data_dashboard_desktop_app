import 'package:data_dashboard_desktop_app/dashboard/widgets/dashboard_body_widget.dart';
import 'package:data_dashboard_desktop_app/dashboard/widgets/header_action_icon_widget.dart';
import 'package:data_dashboard_desktop_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'NTNU Doctorate',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              FontAwesomeIcons.sort,
              size: 15,
            ),
          ],
        ),
        actions: const [
          HeaderActionIconWidget(
            svgIcon: Assets.profileIcon,
          ),
          HeaderActionIconWidget(
            svgIcon: Assets.homeIcon,
          ),
          HeaderActionIconWidget(
            svgIcon: Assets.settingIcon,
          ),
        ],
      ),
      body: const Column(
        children: [
          Divider(
            height: 1,
          ),
          Expanded(
            child: DashboardBodyWidget(),
          ),
        ],
      ),
    );
  }
}
