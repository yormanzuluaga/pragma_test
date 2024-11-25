import 'package:flutter/material.dart';
import 'package:pragma_ui/pragma_ui.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({super.key});

  @override
  SignInWidgetState createState() => SignInWidgetState();
}

class SignInWidgetState extends State<SignInWidget> {
  final String value = 'Seleccioná una institución';

  final List<String> listItems = ['Seleccioná una institución', 'institución'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/swiss_logo_color_052024.png',
              package: 'pragma_ui',
              height: 103,
              width: 409,
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Pase de guardia',
              style: UITextStyle.titles.title2Medium.copyWith(
                color: AppColors.primary,
              ),
            ),
            SizedBox(
              height: 63,
            ),
            SizedBox(
              width: 464,
              height: 340,
              child: BaseCard(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.xlgplus),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 416,
                        child: AppButton.primary(
                          title: 'Ingresar',
                          onPressed: null,
                          textStyle: UITextStyle.labels.label,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
