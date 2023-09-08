import 'package:flutter/material.dart';
import 'package:flutter_ezy_app_homework/theme/app_colors.dart';
import 'package:flutter_ezy_app_homework/theme/app_fonts.dart';

class OutlinedStoreButtonWidget extends StatelessWidget {
  const OutlinedStoreButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: const Size(180, 35),
        shape: const StadiumBorder(),
        side: const BorderSide(
          width: 1.5,
          color: AppColors.cornerClrGrey,
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Магазин автозапчастей',
        style: AppFonts.w700s12,
      ),
    );
  }
}
