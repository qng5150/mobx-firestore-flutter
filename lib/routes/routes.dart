import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobx_firestore_flutter/page/add_profile/add_profile.dart';
import 'package:mobx_firestore_flutter/page/profile_page/profile_page.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => ProfilePage(),
    ),
    GoRoute(
      path: '/add',
      builder: (BuildContext context, GoRouterState state) => AddProfile(),
    ),
  ],
);
