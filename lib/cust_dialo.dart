// // ignore_for_file: public_member_api_docs; sort_constructors_first, must_be_immutable
// import 'package:flutter/material.dart';

// class CusDio extends StatelessWidget {
//   final Color? backgroundColor;
//   final double? elevation;
//   final Duration? insetAnimationDuration;
//   final Curve? insetAnimationCurve;
//   final EdgeInsets? insetPadding;
//   final Clip? clipBehavior;
//   final ShapeBorder? shape;
//   final AlignmentGeometry? alignment;
//   final Widget? child;
//   CusDio(
//       {super.key,
//       this.backgroundColor,
//       this.elevation,
//       this.insetAnimationDuration,
//       this.insetAnimationCurve,
//       this.insetPadding,
//       this.clipBehavior,
//       this.shape,
//       this.alignment,
//       this.child});

//   @override
//   Widget build(BuildContext context) {
//     // ignore: prefer_const_constructors
//     return Dialog(
//       backgroundColor: Colors.black,
//     );
//   }
// }

import 'package:flutter/material.dart';

class CusDio extends StatelessWidget {
  final BuildContext context;
  final bool barrierDismissible = true;
  final Color? barrierColor = Colors.black54;
  final String? barrierLabel;
  final bool useSafeArea = true;
  final bool useRootNavigator = true;
  final RouteSettings? routeSettings;
  final Offset? anchorPoint;
  const CusDio(
      {super.key,
      required this.context,
      this.barrierLabel,
      this.routeSettings,
      this.anchorPoint});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            fixedSize: MaterialStateProperty.all(Size(100, 50))),
        onPressed: () => _dialogBuilder(context),
        child: const Text('Open Dialog'),
      ),
    );
  }

  static Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Basic dialog title'),
          content: const Text('A dialog is a type of modal window that\n'
              'appears in front of app content to\n'
              'provide critical information, or prompt\n'
              'for a decision to be made.'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
