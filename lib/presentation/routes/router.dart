import 'package:auto_route/auto_route_annotations.dart';

import '../sign_in/sing_in.dart';
import '../splash/splash.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $RouterApp {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
}