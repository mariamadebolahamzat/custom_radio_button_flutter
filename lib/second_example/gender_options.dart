import 'package:custom_radio_button/second_example/gender_type.dart';
import 'package:flutter/material.dart';

class GenderOption extends StatelessWidget {
  const GenderOption({
    Key? key,
    required this.optionIconAsset,
    required this.iconText,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);
  final IconData optionIconAsset;
  final String iconText;
  final GenderType? groupValue;
  final GenderType value;
  final ValueChanged<GenderType?>? onChanged;

  bool get _selected => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged != null
          ? () {
              onChanged!(value);
            }
          : null,
      child: Container(
        height: 96,
        width: 96,
        decoration: BoxDecoration(
          color: _selected ? Colors.blue : Colors.black12,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              optionIconAsset,
              size: 22,
              color: _selected ? Colors.white : Colors.black,
            ),
            Text(
              iconText,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: _selected ? Colors.white : Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
