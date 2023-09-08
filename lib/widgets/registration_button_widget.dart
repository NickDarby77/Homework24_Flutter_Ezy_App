import 'package:flutter/material.dart';
import 'package:flutter_ezy_app_homework/theme/app_colors.dart';
import 'package:flutter_ezy_app_homework/theme/app_fonts.dart';
import '../screens/registration_page.dart';

class OutlinedRegistrationButtonWidget extends StatelessWidget {
  const OutlinedRegistrationButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          fixedSize: const Size(double.maxFinite, 60),
          shape: const StadiumBorder(),
          side: const BorderSide(
            width: 2,
            color: AppColors.cornerClrGrey,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RegistrationPage(),
            ),
          );
        },
        child: const Text(
          'Регистрация',
          style: AppFonts.w700s18Outlined,
        ),
      ),
    );
  }
}
