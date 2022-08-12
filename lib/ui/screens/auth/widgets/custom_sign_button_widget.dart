import 'package:arts_beaty/app_resources/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSignButtonWidget extends StatefulWidget {
  const CustomSignButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.childText,
      required this.backgroundColor,
      required this.childColor})
      : super(key: key);
  final Function onPressed;
  final String childText;
  final Color backgroundColor;
  final Color childColor;

  @override
  State<CustomSignButtonWidget> createState() => _CustomSignButtonWidgetState();
}

class _CustomSignButtonWidgetState extends State<CustomSignButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          AppColors.signButtonColor,
        ),
      ),
      onPressed: () => widget.onPressed,
      child: Text(widget.childText),
    );
  }
}
