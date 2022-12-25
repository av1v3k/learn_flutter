import 'package:flutter/material.dart';

class TextW extends StatelessWidget {
  final String _bodyText;

  const TextW(this._bodyText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(_bodyText);
  }
}
