import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';
import '../widgets/registration_button_widget.dart';
import '../widgets/store_button_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: AppColors.gradientClr,
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.scaffoldBgClr,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/images/EZY logo.png', height: 95),
              const SizedBox(height: 100),
              const Text(
                'Добро пожаловать!',
                style: AppFonts.w700s30,
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Приветствуем вас на площадке аренды строительной техники',
                  style: AppFonts.w400s16,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 74),
              const OutlinedRegistrationButtonWidget(),
              const SizedBox(height: 18),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'У меня уже есть аккаунт',
                  style: AppFonts.w400s16,
                ),
              ),
              const SizedBox(height: 60),
              const OutlinedStoreButtonWidget(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
