import 'package:flutter/material.dart';
import 'package:mrec_app/utils/texts.dart';

class PrimaryButton extends StatefulWidget {
  final String label;
  final bool enabled;
  final void Function()? onPressed;

  const PrimaryButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        onTap: () {
          widget.onPressed!();
        },
        child: Container(
          height: 26,
          width: 75,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.red,
              border: Border.all(color: Colors.transparent)),
          child: CustomText(
            widget.label,
            fontSize: 16,
            textColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
