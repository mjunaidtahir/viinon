import 'package:flutter/material.dart';
import 'package:viinon/gen/colors.gen.dart';

class AppTextField extends StatefulWidget {
  final String hintText;
  final String labelText;
  final String? errorText;
  final TextStyle? textStyle;
  final int? maxLine;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  final bool? enable;
  final bool isPassword;
  final int? minLines;
  final int? maxLines;
  final ValueChanged<String>? onChanged;

  const AppTextField({
    super.key,
    this.maxLine,
    required this.hintText,
    this.prefixIcon,
    this.textStyle,
    this.keyboardType,
    this.suffixIcon,
    this.controller,
    this.enable,
    this.minLines,
    this.maxLines,
    this.labelText = '',
    this.isPassword = false,
    this.validator,
    this.errorText,
    this.onChanged,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _obscureText = true;

  void _changeTextVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      enabled: widget.enable,
      obscureText: widget.isPassword && _obscureText,
      controller: widget.controller,
      validator: widget.validator,
      style: widget.textStyle ??
          Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 18),
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        errorText: widget.errorText,
        suffixIcon: widget.isPassword
            ? IconButton(
                splashRadius: 1,
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: ColorName.primaryGreen,
                ),
                onPressed: _changeTextVisibility,
              )
            : widget.suffixIcon,
        labelText: widget.hintText,
        hintText: widget.hintText,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: const BorderSide(color: ColorName.primaryGreen),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        focusColor: ColorName.primaryGreen,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: const BorderSide(
            color: Colors.grey,
          ),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
