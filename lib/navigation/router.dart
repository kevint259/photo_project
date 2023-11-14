import 'package:flutter_project1/pages/home_page.dart';
import 'package:flutter_project1/pages/photos_page.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: 'photos',
      path: '/photos',
      builder: (context, state) => const PhotoPage(),
    ),
  ],
);