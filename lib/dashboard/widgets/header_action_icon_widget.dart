import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderActionIconWidget extends StatelessWidget {
  final String svgIcon;
  const HeaderActionIconWidget({super.key, required this.svgIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SvgPicture.asset(
        svgIcon,
      ),
    );
  }
}
