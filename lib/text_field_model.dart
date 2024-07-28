import 'package:flutter/material.dart';

//data class for textfields
class TextFieldData {
  Offset offset;
  TextStyle textStyle;
  TextEditingController controller;
  bool isSelected;
  bool isEmpty;

  TextFieldData({
    required this.offset,
    required this.textStyle,
    required this.controller,
    this.isSelected = false,
    this.isEmpty = true,
  });
  TextFieldData copy() {
    return TextFieldData(
      offset: offset,
      textStyle: textStyle,
      controller: TextEditingController(text: controller.text),
      isSelected: isSelected,
      isEmpty: isEmpty,
    );
  }
}
