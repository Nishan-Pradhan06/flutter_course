import 'package:go_router/go_router.dart';
import 'package:new_project/screens/initial_screen.dart';
import 'package:new_project/screens/login_screen.dart';
import 'package:new_project/shared/bottom_nav_bar.dart';
import '../screens/home_screen.dart';
import 'routes_name.dart';

List<GoRoute> userAppRoutes = [
  GoRoute(
    path: RouteNames.loginScreen,
    name: 'login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: RouteNames.initialScreen,
    name: 'initial',
    builder: (context, state) => const InitialScreen(),
  ),
  GoRoute(
    path: RouteNames.bottomNavBar,
    name: 'bottomNavBar',
    builder: (context, state) => const BottomNavBar(),
  ),
  GoRoute(
    path: RouteNames.homeScreen,
    name: 'home',
    builder: (context, state) => const HomePage(),
  ),
];
