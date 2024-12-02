import 'package:flutter/material.dart';
import 'package:oli_alazm_app/core/utils/styles.dart';
import 'package:oli_alazm_app/core/widgets/custom_form_field.dart';

class FormItem extends StatelessWidget {
  const FormItem(
      {super.key,
      required this.text,
      required this.hint,
      this.maxLines = 1,
      this.onChanged,
      this.onSaved,
      this.obscureText = false,
      this.keyboardType,
      this.validator});

  final String text;
  final String hint;
  final int? maxLines;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Styles.textStyle16,
        ),
        const SizedBox(height: 10),
        CustomFormField(
          validator: validator,
          onChanged: onChanged,
          onSaved: onSaved,
          obscureText: obscureText,
          keyboardType: keyboardType,
          hint: hint,
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
