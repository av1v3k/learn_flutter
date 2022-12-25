import 'package:flutter/material.dart';

class BtnW extends StatelessWidget {
  final VoidCallback _btnHandler;
  final String _btnText;

  const BtnW(this._btnHandler, this._btnText, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: _btnHandler, child: Text(_btnText));
  }
}
