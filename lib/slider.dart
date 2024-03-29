import 'package:flutter/material.dart';

class SliderController extends StatefulWidget {
  final double value;
  final double min;
  final double max;
  final String label;
  final Function(double value) onChange;
  SliderController({required this.value,required this.min,required this.max,required this.label,required this.onChange});
  @override
  _SliderControllerState createState() => _SliderControllerState();
}

class _SliderControllerState extends State<SliderController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      child: Row(
        children: <Widget>[
          Text(
            widget.label,
            style: TextStyle(fontSize: 16),
          ),
          Expanded(
            child: Container(
              child: SliderTheme(
                  data: SliderThemeData(
                    valueIndicatorTextStyle:
                        TextStyle(fontSize: 18, color: Colors.white),
                    valueIndicatorColor: Colors.black,
                    activeTrackColor: Colors.black,
                    thumbColor: Colors.white,
                    trackHeight: 8,
                  ),
                  child: Slider(
                    value: widget
                        .value, //double.parse(widget.value.toStringAsPrecision(3)),
                    label: "${widget.value}",
                    max: widget.max,
                    min: widget.min,
                    divisions: 80,
                    onChanged: (value) => widget.onChange(value),
                  )),
            ),
          ),
          Text(
            widget.value.toString(),
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
