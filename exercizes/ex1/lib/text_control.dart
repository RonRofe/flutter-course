import 'package:flutter/material.dart';

import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TextControlState();
}

class TextControlState extends State<TextControl> {
  String _text = 'Hello world!';
  
  void _updateText() {
    setState(() => this._text = 'I am so glad to see you here with me!');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextOutput(this._text),
      RaisedButton(child: Text('Change Text'), onPressed: this._updateText)
    ]);
  }
}