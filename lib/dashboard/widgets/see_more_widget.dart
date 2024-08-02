import 'package:data_dashboard_desktop_app/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeeMoreWidget extends StatelessWidget {
  final bool isSeeMore;
  final VoidCallback onTapSeeMore;
  const SeeMoreWidget({
    super.key,
    required this.isSeeMore,
    required this.onTapSeeMore,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapSeeMore,
      child: Container(
          height: 80,
          width: 39,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 0.2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'see more',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SvgPicture.asset(
                width: 10,
                height: 10,
                // colorFilter: ColorFilter.mode(
                //   generalStatistic.color,
                //   BlendMode.srcIn,
                // ),
                isSeeMore ? Assets.arrowUpIcon : Assets.arrowDownIcon,
              ),
            ],
          )),
    );
  }
}
