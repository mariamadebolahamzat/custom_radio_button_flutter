import 'package:flutter/material.dart';

class CustomRadio<T> extends StatelessWidget {
  final String text;
  final T value;
  final T? groupValue;
  final ValueChanged<T>? onChanged;

  const CustomRadio(
      {Key? key,
      required this.text,
      required this.value,
      this.groupValue,
      this.onChanged})
      : super(key: key);

  bool get _selected => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => updateValue(value),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey.withOpacity(0.4),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _selected ? Colors.blue : Colors.grey.withOpacity(0.4),
              ),
              alignment: Alignment.center,
              child: const Icon(Icons.check, color: Colors.white),
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

   void updateValue(T value) {
    onChanged!(value);
  }
}

 