import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/style.dart';
import 'package:flutter_application_1/features/ui/onboarding/doc_logo_and_name.dart';
import 'package:flutter_application_1/features/ui/onboarding/doctor_image_and_text.dart';
import 'package:flutter_application_1/features/ui/onboarding/get_started_buttom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            DocLogoAndName(),
            SizedBox(height: 30.h),
            DoctorImageAndText(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: Style.font13grayregular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.h),
                  GetStartedButtom(),
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }
}
