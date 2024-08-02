import 'package:data_dashboard_desktop_app/utils/assets.dart';
import 'package:data_dashboard_desktop_app/widgets/drop_down_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FiltersWidget extends StatefulWidget {
  const FiltersWidget({super.key});

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  String selectedFaculty = 'All faculties';
  String selectedInstitute = 'All institutes';
  String selectedProgram = 'All programs';
  bool isPlus = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DropDownFieldWidget<String>(
            value: selectedFaculty,
            onChanged: (value) {},
            items: ['All faculties', 'Faculty 1']
                .map(
                  (e) => DropdownMenuItem<String>(
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList(),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Expanded(
          child: DropDownFieldWidget<String>(
            value: selectedInstitute,
            onChanged: (value) {},
            items: ['All institutes', 'Institute 1']
                .map(
                  (e) => DropdownMenuItem<String>(
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList(),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Expanded(
          child: DropDownFieldWidget<String>(
            value: selectedProgram,
            onChanged: (value) {},
            items: ['All programs', 'Program 1']
                .map(
                  (e) => DropdownMenuItem<String>(
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList(),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.02,
        ),
        Expanded(
            child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.5),
          ),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            selected: isPlus,
            tileColor: Theme.of(context).colorScheme.onPrimaryFixed,
            onTap: () {
              setState(() {
                isPlus = !isPlus;
              });
            },
            title: Text(
              'COMPARE WITH',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: isPlus
                        ? null
                        : Theme.of(context).colorScheme.primaryFixed,
                  ),
            ),
            trailing: SvgPicture.asset(
              isPlus ? Assets.plusIcon : Assets.closeIcon,
            ),
          ),
        )),
      ],
    );
  }
}
