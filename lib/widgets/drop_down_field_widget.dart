import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DropDownFieldWidget<T extends Object> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  final T? value;

  const DropDownFieldWidget({
    super.key,
    required this.items,
    this.onChanged,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      icon: Icon(
        FontAwesomeIcons.sort,
        size: 15,
      ),
      decoration: const InputDecoration(
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(width: 1.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(width: 0.5),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            width: 0.5,
          ),
        ),
      ),
      items: items,
      value: value,
      onChanged: onChanged,
    );
  }
}
