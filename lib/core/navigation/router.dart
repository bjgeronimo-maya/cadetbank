
import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/presentation/screens/home/home_screen.dart';
import 'package:cadetbank/presentation/screens/initial/initial_screen.dart';
import 'package:cadetbank/presentation/screens/login/cubits/login_form/login_form_cubit.dart';
import 'package:cadetbank/presentation/screens/login/login_screen.dart';
import 'package:cadetbank/presentation/screens/registration/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.init:
        return AppTransition.none(child: const InitialScreen());
      case Routes.login:
        return AppTransition.slide(child: buildLoginScreen());
      case Routes.registration:
        return AppTransition.slide(child: const RegistrationScreen());
      case Routes.home:
        return AppTransition.slide(child: const HomeScreen());
      default:
        return AppTransition.none(child: const SizedBox.shrink());
    }
  }

  static Widget buildLoginScreen() => MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (_) => LoginFormCubit(),
      ),
    ],
    child: const LoginScreen(),
  );
}


class AppTransition {

  static PageRouteBuilder none({
    required Widget child,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  static PageRouteBuilder slide({
    required Widget child,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Define the slide transition
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        var slideAnimation = animation.drive(tween);

        return SlideTransition(
          position: slideAnimation,
          child: child,
        );
      },
    );
  }
}