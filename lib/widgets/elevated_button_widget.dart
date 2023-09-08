import 'package:flutter/material.dart';
import 'package:flutter_ezy_app_homework/theme/app_colors.dart';
import 'package:flutter_ezy_app_homework/theme/app_fonts.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.whiteClr,
        fixedSize: const Size(double.maxFinite, 60),
        side: const BorderSide(
          width: 2,
          color: AppColors.cornerClrGrey,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Зарегистрироваться',
        style: AppFonts.w700s18,
      ),
    );
  }
}
