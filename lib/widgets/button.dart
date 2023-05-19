import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final Function() onPressed;
  final String? text;
  final IconData? icon;
  final double? width;
  final double? height;
  final double? fontSize;
  final double? textPadding;

  const ButtonWidget({
    Key? key,
    required this.onPressed,
    this.text,
    this.icon,
    this.width,
    this.height,
    this.fontSize,
    this.textPadding,
  }) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[800],
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: widget.onPressed,
        child: Padding(
          padding: EdgeInsets.all(widget.textPadding ?? 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.icon != null) Container(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                width: 22,
                height: 22,
                child: Icon(
                  widget.icon,
                  color: Colors.white70,
                ),
              ),
              if (widget.icon != null && widget.text != null) const SizedBox(width: 8),
              if (widget.text != null) Text(
                widget.text!,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.grey[300],
                  fontSize: widget.fontSize ?? 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
