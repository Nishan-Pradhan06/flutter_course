import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app_router.dart';
import 'routes_name.dart';


final router =  GoRouter(
  initialLocation: RouteNames.loginScreen,
  routes:[...userAppRoutes],
  errorBuilder: (context, state) =>
      const Scaffold(body: Center(child: Text('Page Not Found'))),
);
