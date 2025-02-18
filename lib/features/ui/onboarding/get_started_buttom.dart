import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/extension.dart';

import 'package:flutter_application_1/core/routing/routes.dart';
import 'package:flutter_application_1/core/theming/colors.dart';
import 'package:flutter_application_1/core/theming/style.dart';

class GetStartedButtom extends StatelessWidget {
  GetStartedButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize:  WidgetStateProperty.all(Size(double.infinity, 52)),
          shape:  WidgetStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))),
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Text(
        'Get Started',
        style: Style.font16whightsemibold,
      ),
    );
  }
}
