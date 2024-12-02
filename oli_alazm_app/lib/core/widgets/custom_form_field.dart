import 'package:flutter/material.dart';
import '../utils/app_color.dart';
import '../utils/styles.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key,
      required this.hint,
      this.maxLines=1,
      this.onChanged,
      this.onSaved,
      this.validator,
      this.obscureText = false,
      this.keyboardType});

  final String hint;
  final int? maxLines;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      keyboardType: keyboardType,
      maxLines: maxLines,
      onChanged: onChanged,
      obscureText: obscureText,
      onSaved: onSaved,
      validator: validator,
      style: Styles.textStyle14,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: AppColor.kGrayTextColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: AppColor.kGrayTextColor),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(color: AppColor.kGrayTextColor),
        ),
        hintText: hint,
        hintStyle: Styles.textStyle14,
      ),
    );
  }
}
