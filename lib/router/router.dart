import 'package:anime/pages/MyAnimePage/AddAnimePage/add_anime_page.dart';
import 'package:anime/pages/MyAnimePage/AnimeDetailPage/anime_detail_page.dart';
import 'package:anime/pages/MyAnimePage/my_anime_page.dart';
import 'package:anime/pages/SchedulePage/schedule_page.dart';
import 'package:anime/pages/app_root_page.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(initialLocation: "/", routes: [
  GoRoute(path: "/", builder: (context, state) => const AppRootPage(), routes: [
    GoRoute(path: "schedule", builder: (context, state) => SchedulePage()),
    GoRoute(
      path: "my_anime",
      builder: (context, state) => MyAnimePage(),
    ),
    GoRoute(path: "add_anime", builder: (context, state) => AddAnimePage()),
    GoRoute(
        path: "anime_detail", builder: (context, state) => AnimeDetailPage()),
  ]),
]);
