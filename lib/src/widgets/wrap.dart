import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  final List<Widget> children;

  const WrapWidget({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: WrapAlignment.start,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      spacing: 8,
      runSpacing: 12,
      children: children,
    );
  }
}
