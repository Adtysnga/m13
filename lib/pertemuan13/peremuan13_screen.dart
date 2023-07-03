// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pertemuan13/components/content_widget.dart';
import 'package:flutter_application_1/pertemuan13/components/progress_indicator_widget.dart';
import 'package:flutter_application_1/pertemuan13/components/slider_widget.dart';
import 'package:flutter_application_1/pertemuan13/pertemuan13_provider.dart';
import 'package:provider/provider.dart';

class pertemuan13Screen extends StatefulWidget {
  const pertemuan13Screen({super.key});

  @override
  State<pertemuan13Screen> createState() => _pertemuan13ScreenState();
}

class _pertemuan13ScreenState extends State<pertemuan13Screen> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Pertemuan13')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Durasi Memanggang: ${prov.sliderValue.round().toString()}'),
            const SlideWidget(),
            const Align(
              child: ProgressIndicatorWidget(),
              alignment: Alignment.bottomRight,
            ),
            const SizedBox(height: 100),
            const ContentWidget()
          ],
        ),
      ),
    );
  }
}
