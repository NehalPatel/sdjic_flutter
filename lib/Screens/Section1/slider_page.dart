import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0;
  RangeValues _currentRangeValues = const RangeValues(20, 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Widget Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                min: 0,
                max: 100,
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
              Slider(
                  value: _value.toDouble(),
                  min: 0.0,
                  max: 100.0,
                  divisions: 10,
                  activeColor: Colors.green,
                  inactiveColor: Colors.orange,
                  label: 'Set volume value',
                  onChanged: (double newValue) {
                    setState(() {
                      _value = newValue;
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()} dollars';
                  }
              ),
              RangeSlider(
                values: _currentRangeValues,
                min: 0,
                max: 100,
                divisions: 10,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}
