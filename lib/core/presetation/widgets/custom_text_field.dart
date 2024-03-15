import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController? textEditingController;
  IconData? iconData;
  String? hintString;
  bool? isObscure;
  bool? enabled;
  TextInputType? keyboardType;

  CustomTextField({
    super.key,
    required this.textEditingController,
    required this.iconData,
    required this.hintString,
    required this.isObscure,
    required this.enabled,
    this.keyboardType,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        child: TextFormField(
          enabled: widget.enabled,
          controller: widget.textEditingController,
          obscureText: widget.isObscure!,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: widget.hintString,
            hintStyle: const TextStyle(color: Colors.white),
            prefixIcon: Icon(
              widget.iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
