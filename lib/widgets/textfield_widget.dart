import 'package:flutter/material.dart';
import 'package:flutter_ezy_app_homework/theme/app_colors.dart';
import 'package:flutter_ezy_app_homework/theme/app_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.personalDataQuestion,
    required this.personalDataAnswer,
    this.eye,
  });

  final String personalDataQuestion;
  final String personalDataAnswer;
  final Icon? eye;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            personalDataQuestion,
            style: AppFonts.w400s16Question,
          ),
          const SizedBox(height: 5),
          TextField(
            decoration: InputDecoration(
              suffixIcon: eye,
              hintText: personalDataAnswer,
              hintStyle: AppFonts.w400s16,
              border: const OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColors.textfieldClrGrey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
