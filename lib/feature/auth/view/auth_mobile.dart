import 'package:flutter/material.dart';
import 'package:pragma_ui/pragma_ui.dart';

class AuthMobile extends StatelessWidget {
  const AuthMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 227,
            ),
            SizedBox(
              width: 416,
              child: AppButton.primary(
                title: 'Ingresar con Microsoft',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
