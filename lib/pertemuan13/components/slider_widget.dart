import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan13/pertemuan13_provider.dart';
import 'package:provider/provider.dart';

class SlideWidget extends StatelessWidget {
  const SlideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);
    return Slider(
      value: prov.sliderValue,
      min: 0,
      max: 10,
      label: prov.sliderValue.round().toString(),
      onChanged: (value) {
        prov.SetSliderValue = value;
      },
    );
  }
}
