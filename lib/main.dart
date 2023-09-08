import 'package:flutter/material.dart';
import 'screens/welcome_page.dart';

void main(List<String> args) {
  runApp(EzyApp());
}

class EzyApp extends StatelessWidget {
  const EzyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextFieldUnfocus(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomePage(),
      ),
    );
  }
}

class TextFieldUnfocus extends StatelessWidget {
  const TextFieldUnfocus({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          final FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: child,
      );
}
