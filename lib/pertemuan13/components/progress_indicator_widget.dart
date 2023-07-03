import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan13/pertemuan13_provider.dart';
import 'package:provider/provider.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);
    return ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: Size(100, 90)),
        onPressed: () {
          if (prov.sliderValue.round() == 0) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Invalid Duration'),
                  content: Text('The duration cannot be 0.'),
                  actions: [
                    TextButton(
                      child: Text('OK'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          }
          prov.mulaiMemanggang(prov.sliderValue.round());
        },
        child: prov.sedangMemanggang == true
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : const Text('Panggang'));
  }
}
