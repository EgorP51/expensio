import 'package:flutter/material.dart';

class SliderAlertDialog extends StatefulWidget {
  final double? initialValue;

  const SliderAlertDialog({
    super.key,
    this.initialValue,
  });

  @override
  _SliderAlertDialogState createState() => _SliderAlertDialogState();
}

class _SliderAlertDialogState extends State<SliderAlertDialog> {
  double _sliderValue = 7;

  @override
  void initState() {
    _sliderValue = widget.initialValue ?? 7;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
          'Показать статистику за ${_sliderValue.toStringAsFixed(0)} дней'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Slider(
            value: _sliderValue,
            min: 1,
            max: 30,
            divisions: 29,
            onChanged: (newValue) {
              setState(() {
                _sliderValue = newValue;
              });
            },
            label: _sliderValue.toStringAsFixed(0),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(_sliderValue);
            },
            child: const Text('Готово'),
          ),
        ],
      ),
    );
  }
}
