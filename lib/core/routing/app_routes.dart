import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/routing/routes.dart';
import 'package:flutter_application_1/features/ui/login_screen.dart';
import 'package:flutter_application_1/features/ui/onboarding/onboarding_screen.dart';


class AppRoutes {
  
  Route generateRoute(RouteSettings settings) {
    //this argument to pass data between screens
    final argument = settings.arguments;
    switch (settings.name) {
      case Routes.onBoarderScreen:
        return MaterialPageRoute(builder: (_) =>  OnboardingScreen());
        case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
        default: return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
        
    }
  }
}