import 'package:flutter/material.dart';
import 'package:flutter_ezy_app_homework/theme/app_colors.dart';
import 'package:flutter_ezy_app_homework/theme/app_fonts.dart';
import '../widgets/elevated_button_widget.dart';
import '../widgets/textfield_widget.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

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
        // resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        backgroundColor: AppColors.scaffoldBgClr,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Регистрация',
            style: AppFonts.w600s20,
          ),
          backgroundColor: AppColors.scaffoldBgClr,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset('assets/images/back.png'),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: ListView(
              shrinkWrap: true,
              reverse: true,
              children: [
                const TextFieldWidget(
                  personalDataQuestion: 'Фамилия',
                  personalDataAnswer: 'Иванов',
                ),
                const TextFieldWidget(
                  personalDataQuestion: 'Имя',
                  personalDataAnswer: 'Иван',
                ),
                const TextFieldWidget(
                  personalDataQuestion: 'Номер телефона',
                  personalDataAnswer: '(+996) 500 000 000',
                ),
                const TextFieldWidget(
                  personalDataQuestion: 'Пароль',
                  personalDataAnswer: '•••••••',
                  eye: Icon(
                    Icons.remove_red_eye_outlined,
                    color: AppColors.whiteClr,
                  ),
                ),
                const SizedBox(height: 26),
                const ElevatedButtonWidget(),
              ].reversed.toList(),
            ),
          ),
        ),
      ),
    );
  }
}
