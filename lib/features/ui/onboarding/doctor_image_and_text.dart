import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/theming/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
   DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       SvgPicture.asset('assets/svgs/docdoc_logo_low_opasity.svg'),
        Container(
          foregroundDecoration:  BoxDecoration(
           gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.white.withOpacity(0.0),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [0.14, 0.4]
            
            ),
          ),
          child: 
           Image.asset('assets/images/doctor_onbrder_screen.png'),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child:
                Text(
                  'Best Doctors Appointments App',
                  style: Style.font328luebold.copyWith(
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                )
               
              
            
          ),
        
      ],
    );
  }
}