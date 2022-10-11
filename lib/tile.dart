// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

class TileListCu extends StatelessWidget {
  Widget? leading;
  Widget? title;
  Widget? subtitle;
  Widget? trailing;
  bool? dense;
  VisualDensity? visualDensity;
  ShapeBorder? shape;
  ListTileStyle? style;
  Color? selectedColor;
  Color? iconColor;
  Color? textColor;
  TileListCu({
    Key? key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.dense,
    this.visualDensity,
    this.shape,
    this.style,
    this.selectedColor,
    this.iconColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text("I like icecream"),
      subtitle: subtitle,
      trailing: const Icon(Icons.food_bank),
      dense: dense,
      visualDensity: visualDensity,
      shape: shape,
      style: style,
      selectedColor: selectedColor,
      iconColor: iconColor,
      textColor: textColor,
    );
  }
}
